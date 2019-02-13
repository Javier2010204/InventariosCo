# == Schema Information
#
# Table name: providers
#
#  id         :integer          not null, primary key
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
end
