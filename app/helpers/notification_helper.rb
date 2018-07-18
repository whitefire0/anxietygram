module NotificationHelper
  def unread_notifications(user)
    user.notifications.where(read: nil).count
  end

  def from_time(created_at)
    time_ago_in_words(created_at)
  end
end
