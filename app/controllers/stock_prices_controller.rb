class StockPricesController < ApplicationController
  def index
    if params[:search].present?
      stock_price_in_dollar = StockPrice.get_stock_data(params[:search])["results"].last["c"]
      @stock_price = StockPrice.new(ticker: params[:search], current_price_cents: (stock_price_in_dollar * 100).to_i)
    else
      stock_price_in_dollar = StockPrice.get_stock_data("AAPL")["results"].last["c"]
      @stock_price = StockPrice.new(ticker: "AAPL", current_price_cents: stock_price_in_dollar * 100)
    end
  end
end