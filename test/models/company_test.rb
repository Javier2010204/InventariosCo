# == Schema Information
#
# Table name: companies
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  bio        :text
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  phone      :integer
#  address    :string
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
