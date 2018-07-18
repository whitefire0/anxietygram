class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :image

  after_create :create_notification

  def create_notification
    return if image.user.id == user.id
    Notification.create(user_id: image.user.id, notified_by_id: user.id, image_id: image.id, notify_type: 'comment')
  end
end
