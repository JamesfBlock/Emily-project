class Product < ApplicationRecord
  has_many :rooms
  belongs_to :company

  # URL setup
  extend FriendlyId
  friendly_id :name, use: :slugged

  def similar_products?
    room_id = self.room_id
    products = Product.where(room_id: room_id)
    return products.to_a - [self]
  else
    return false
  end
end
