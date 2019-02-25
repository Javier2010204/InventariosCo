# == Schema Information
#
# Table name: products
#
#  id                  :bigint(8)        not null, primary key
#  name                :string
#  description         :text
#  price_sale          :decimal(, )
#  price_cost          :decimal(, )
#  price_offer         :decimal(, )
#  state               :string
#  offer               :string
#  expiration_date     :date
#  stock               :integer
#  min_stock           :integer
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :bigint(8)
#  avatar_updated_at   :datetime
#  unit_id             :bigint(8)
#  bar_code            :integer
#  serial_number       :string
#  brand_id            :bigint(8)
#  sub_category_id     :bigint(8)
#  provider_id         :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  company_id          :bigint(8)        default(1)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
