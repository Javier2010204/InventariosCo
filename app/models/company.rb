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

class Company < ApplicationRecord
    has_many :stores
    has_many :products

    validates :name, presence: true
end
