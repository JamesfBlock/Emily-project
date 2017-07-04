class Room < ApplicationRecord
  # Attachinary set-up
  has_attachment :icon
  has_many :products
end
