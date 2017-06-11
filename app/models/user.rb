class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products, through: :likes
  has_many :likes


  # Attachinary associations
  has_attachment :profile_picture
  has_attachment :cover_photo

  def get_picture
    if profile_picture?
      return profile_picture.path
    else
      return 'sample'
    end
  end
end
