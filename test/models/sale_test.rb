# == Schema Information
#
# Table name: sales
#
#  id         :bigint(8)        not null, primary key
#  number     :integer
#  state      :integer
#  client_id  :bigint(8)
#  company_id :bigint(8)
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
