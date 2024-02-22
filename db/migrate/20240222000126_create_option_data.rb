class CreateOptionData < ActiveRecord::Migration[7.1]
  def change
    create_table :option_data do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
