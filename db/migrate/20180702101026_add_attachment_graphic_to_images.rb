class AddAttachmentGraphicToImages < ActiveRecord::Migration[5.2]
  def self.up
    change_table :images do |t|
      t.attachment :graphic
    end
  end

  def self.down
    remove_attachment :images, :graphic
  end
end
