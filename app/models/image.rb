class Image < ApplicationRecord
  acts_as_votable
  
  validates :user_id, presence: true
  validates :graphic, presence: true
  has_attached_file :graphic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :graphic, :content_type => /\Aimage\/.*\Z/

  has_many :hashtags
  has_many :comments, dependent: :destroy
  has_many :likes
  belongs_to :user
  has_many :notifications, dependent: :destroy

  scope :of_followed_users, -> (following_users) { where user_id: following_users }

end
