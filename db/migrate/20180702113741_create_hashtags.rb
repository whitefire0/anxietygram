class CreateHashtags < ActiveRecord::Migration[5.2]
  def change
    create_table :hashtags do |t|
      t.string :tagname
      t.references :image, foreign_key: true

      t.timestamps
    end
  end
end
