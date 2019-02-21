class AddColumnCompanyToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_reference :products, :company, index: true
  end
end
