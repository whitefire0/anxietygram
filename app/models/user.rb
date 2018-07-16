class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true

  has_attached_file :avatar, styles: { medium: '152x152#' }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes

end
