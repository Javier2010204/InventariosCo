# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :text
#  price_sale      :decimal(, )
#  price_cost      :decimal(, )
#  price_offer     :decimal(, )
#  state           :string
#  offer           :string
#  expiration_date :date
#  stock           :integer
#  min_stock       :integer
#  unit_id         :integer
#  bar_code        :integer
#  serial_number   :string
#  brand_id        :integer
#  sub_category_id :integer
#  provider_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :unit
  belongs_to :brand
  belongs_to :sub_category
  belongs_to :provider


  def product_description
    self.description + ((self.brand != nil) ? '' + self.brand.name : '')
  end

  def brand_name
    if self.brand
      self.brand.name
    else 
      ''
    end
  end
  
end
