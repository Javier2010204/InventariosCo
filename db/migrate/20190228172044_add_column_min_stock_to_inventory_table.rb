class AddColumnMinStockToInventoryTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :inventories, :min_stock, :integer
  end
end
