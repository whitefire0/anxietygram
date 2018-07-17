
class ChangeColumnTypeOnNotificationsToNotifyType < ActiveRecord::Migration[5.2]
  def change
    change_table :notifications do |t|
      t.rename :type, :notify_type
    end
  end
end