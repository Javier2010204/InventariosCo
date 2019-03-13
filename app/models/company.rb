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

class Company < ApplicationRecord
    has_many :stores
    has_many :products
    has_many :clients

    validates :name, presence: true

    has_attached_file :logo, styles: {thumb: "100x100",medium: "300x300"}, default_url: "/images/:style/default-logo.png"
  	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  	has_attached_file :cover, styles: {thumb: "400x300", medium: "800x600"}, default_url: "/images/:style/default-cover.png"
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
