# == Schema Information
#
# Table name: attachments
#
#  id                   :bigint(8)        not null, primary key
#  product_id           :bigint(8)
#  archivo_file_name    :string
#  archivo_content_type :string
#  archivo_file_size    :bigint(8)
#  archivo_updated_at   :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Attachment < ApplicationRecord
  belongs_to :product

  validates :archivo, attachment_presence: true
  has_attached_file :archivo
  validates_attachment_content_type :archivo, content_type: /\Aimage\/.*\Z/
end
