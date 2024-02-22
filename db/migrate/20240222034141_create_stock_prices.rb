class CreateStockPrices < ActiveRecord::Migration[7.1]
  def change
    create_table :stock_prices do |t|

      t.timestamps
    end
  end
end
