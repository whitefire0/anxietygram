module NotificationHelper
  def unread_notifications(user)
    user.notifications.where(read: nil).count
  end
end
