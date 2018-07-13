class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true

  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes

end
