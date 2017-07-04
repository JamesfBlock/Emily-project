class Company < ApplicationRecord
  # URL set-up
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Attachinary set-up
  has_attachment :company_profile
  has_attachment :company_cover

  # access
  has_many :products

end
