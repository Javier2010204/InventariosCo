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
