class Product < ApplicationRecord
  has_one :category
  has_many :likes
  has_many :users, through: :likes

  def likes?
    @current_user = current_user
    if self.likes.where(user_id: @current_user.id).count > 0 || self.likes.where(user_id: nil)
      return true
    end
  end
end

