class Company < ApplicationRecord
  # Attachinary set-up
  has_attachment :company_profile
  has_attachment :company_cover

  # access
  has_many :products

  extend FriendlyId
  friendly_id :name, use: :slugged
end
