require 'net/http'
require 'json'

class StockPrice < ApplicationRecord
  def self.get_stock_data(ticker)
    url = URI.parse("https://api.polygon.io/v2/aggs/ticker/#{ticker}/range/1/day/#{(Date.today - 30).strftime('%Y-%m-%d')}/#{Date.today.strftime('%Y-%m-%d')}?apiKey=1xYdBpo9Dfn9MQInIGeRnf0DvnzNpm_v")
    req = Net::HTTP::Get.new(url.request_uri)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    res = https.request(req)
    JSON.parse(res.body)
  end
end
