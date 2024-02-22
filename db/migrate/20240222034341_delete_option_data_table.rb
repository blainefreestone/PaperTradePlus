class DeleteOptionDataTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :option_data
  end
end
