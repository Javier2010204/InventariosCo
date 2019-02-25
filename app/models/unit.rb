# == Schema Information
#
# Table name: units
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Unit < ApplicationRecord

	has_many :products

	validates :title, presence: true
end
