# == Schema Information
#
# Table name: brands
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Brand < ApplicationRecord
    has_many :products

    validates :name, presence: true
end
