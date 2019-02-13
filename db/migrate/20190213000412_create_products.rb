class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price_sale
      t.decimal :price_cost
      t.decimal :price_offer
      t.string :state
      t.string :offer
      t.integer :stock
      t.integer :min_stock
      t.references :unit, foreign_key: true
      t.integer :bar_code
      t.string :serial_number
      t.references :brand, foreign_key: true
      t.references :sub_category, foreign_key: true
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
