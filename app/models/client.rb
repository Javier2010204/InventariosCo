class Client < ApplicationRecord
  belongs_to :company

  def self.own(company)
    Client.where(company_id: company)
  end
end
