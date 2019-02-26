# == Schema Information
#
# Table name: companies
#
#  id                 :bigint(8)        not null, primary key
#  name               :string
#  bio                :text
#  email              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  phone              :integer
#  address            :string
#  logo_file_name     :string
#  logo_content_type  :string
#  logo_file_size     :bigint(8)
#  logo_updated_at    :datetime
#  cover_file_name    :string
#  cover_content_type :string
#  cover_file_size    :bigint(8)
#  cover_updated_at   :datetime
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
