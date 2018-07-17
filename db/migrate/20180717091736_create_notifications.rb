class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: false
      t.references :subscribed_user, foreign_key: false
      t.references :image, foreign_key: false
      t.integer :identifier
      t.string :type
      t.boolean :read

      t.timestamps
    end
  end
end
