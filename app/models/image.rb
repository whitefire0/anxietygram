class Image < ApplicationRecord
  validates :graphic, presence: true
  has_attached_file :graphic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :graphic, :content_type => /\Aimage\/.*\Z/
end
