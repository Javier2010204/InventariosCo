class Product < ApplicationRecord
  belongs_to :unit
  belongs_to :brand
  belongs_to :sub_category
  belongs_to :provider
end
