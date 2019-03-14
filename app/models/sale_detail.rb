# == Schema Information
#
# Table name: sale_details
#
#  id         :bigint(8)        not null, primary key
#  number     :integer
#  product_id :bigint(8)
#  sale_id    :bigint(8)
#  qty        :integer
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SaleDetail < ApplicationRecord
    belongs_to :sale
    belongs_to :product

    accepts_nested_attributes_for :product

    def sub_total
      self.qty ? qty * unit_price : 0
    end

    def unit_price
      if persisted?
          sale_price
      else
          product ? product.sale_price : 0
      end
    end

end
