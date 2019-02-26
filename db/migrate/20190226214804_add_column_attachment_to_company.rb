class AddColumnAttachmentToCompany < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :companies, :logo
  	add_attachment :companies, :cover
  end
end
