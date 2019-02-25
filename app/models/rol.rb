# == Schema Information
#
# Table name: rols
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  color       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Rol < ApplicationRecord
    has_many :users
end
