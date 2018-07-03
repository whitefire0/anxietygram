class ChangeImagesCaption < ActiveRecord::Migration[5.2]
  def change
    change_table :images do |t|
      t.change :caption, :text
    end
  end
end
