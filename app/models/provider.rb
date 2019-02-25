# == Schema Information
#
# Table name: providers
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  address    :string
#  phone      :string
#  email      :string
#  manager    :string
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Provider < ApplicationRecord
	has_many :products
	validates :name, presence: true

end
