# == Schema Information
#
# Table name: products
#
#  id                  :bigint(8)        not null, primary key
#  name                :string
#  description         :text
#  price_sale          :decimal(, )
#  price_cost          :decimal(, )
#  price_offer         :decimal(, )
#  state               :string
#  offer               :string
#  expiration_date     :date
#  stock               :integer
#  min_stock           :integer
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :bigint(8)
#  avatar_updated_at   :datetime
#  unit_id             :bigint(8)
#  bar_code            :integer
#  serial_number       :string
#  brand_id            :bigint(8)
#  sub_category_id     :bigint(8)
#  provider_id         :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  company_id          :bigint(8)        default(1)
#

class Product < ApplicationRecord

  include AASM

  belongs_to :unit
  belongs_to :brand
  belongs_to :sub_category
  belongs_to :provider
  belongs_to :company
  has_many :attachments

  validates :name, presence: true
  validates :price_sale, presence: true
  validates :price_cost, presence: true
  validates :stock, presence: true
  validates :min_stock, presence: true

  has_attached_file :avatar, styles: {medium:"300x300", thumb:"100x100"}, default_url: "default_product.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  aasm column: "state" do
    state :available, initial: true
    state :sold

    event :exhausted do
      transitions from: [:available], to: [:sold]
    end
  end

  #pendiente de hacer la parte de ofertas


  def product_description
    self.description + ((self.brand != nil) ? '' + self.brand.name : '')
  end

  def brand_name
    if self.brand
      self.brand.name
    else 
      ''
    end
  end
  
end
