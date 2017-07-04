class Room < ApplicationRecord
  # Attachinary set-up
  has_attachment :icon
  has_many :products

  extend FriendlyId
  friendly_id :name, use: :slugged

end
