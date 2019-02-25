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

require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
