class AddColumnPhoneToCompanies < ActiveRecord::Migration[5.2]
  def change
  	add_column :companies, :phone, :integer
  	add_column :companies, :address, :string
  end
end
