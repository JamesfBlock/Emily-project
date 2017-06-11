class Product < ApplicationRecord
  has_one :category
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes, dependent: :destroy
end

