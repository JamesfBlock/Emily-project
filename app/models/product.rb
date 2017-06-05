class Product < ApplicationRecord
  has_many :categories

  def like(product)
    product.like += 1
    return product
  end

end

