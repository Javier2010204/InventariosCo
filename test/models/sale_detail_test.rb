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

require 'test_helper'

class SaleDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
