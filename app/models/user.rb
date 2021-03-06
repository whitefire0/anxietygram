class User < ApplicationRecord
  acts_as_voter
  has_secure_password
  validates :username, uniqueness: true

  has_attached_file :avatar, styles: { medium: '152x152#' }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes
  has_many :notifications, dependent: :destroy

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow', dependent: :destroy
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow', dependent: :destroy
  has_many :following, through: :following_relationships, source: :following
  
  has_many :following_images, through: :following, source: :images

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end
  
  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

end
