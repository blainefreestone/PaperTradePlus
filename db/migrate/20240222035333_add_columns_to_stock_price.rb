class AddColumnsToStockPrice < ActiveRecord::Migration[7.1]
  def change
    add_column :stock_prices, :ticker, :string
    add_column :stock_prices, :name, :string
    add_column :stock_prices, :current_price_cents, :integer
  end
end
