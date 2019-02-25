# == Schema Information
#
# Table name: inventories
#
#  id         :bigint(8)        not null, primary key
#  store_id   :bigint(8)
#  product_id :bigint(8)
#  stock      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Inventory < ApplicationRecord
  belongs_to :store
  belongs_to :product
end
