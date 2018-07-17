class AddNotifiedByToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_reference :notifications, :notified_by, foreign_key: false;
  end
end
