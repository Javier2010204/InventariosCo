class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :address
      t.string :phone
      t.time :opening
      t.time :closing
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
