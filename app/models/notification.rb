class Notification < ApplicationRecord
  belongs_to :notified_by, class_name: 'User'
  belongs_to :user
  belongs_to :image

  validates :user_id, :notified_by_id, :image_id, :notify_type, presence: true

end
