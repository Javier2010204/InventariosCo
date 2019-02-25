# == Schema Information
#
# Table name: stores
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  address    :string
#  phone      :string
#  opening    :time
#  closing    :time
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Store < ApplicationRecord
  belongs_to :company
  has_many :users
end
