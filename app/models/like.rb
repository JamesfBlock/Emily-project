class Like < ApplicationRecord
  belongs_to :user
  belongs_to :product
end

def liked(product)
  keys = []
  user_likes = current_user.likes
  user_likes.each do |l|
    keys << l.product_id
  end
  if keys.include?(product.id)
    return true
  else
    return false
  end
end

