class Post < ActiveRecord::Base
  validates :image, presence: true

  # re-size image to Instagram default width
  has_attached_file :image, styles: {medium: 640x}
  # validate image format
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
