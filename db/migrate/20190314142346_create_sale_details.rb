class CreateSaleDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :sale_details do |t|
      t.integer :number
      t.references :product, foreign_key: true
      t.references :sale, foreign_key: true
      t.integer :qty
      t.decimal :price

      t.timestamps
    end
  end
end
