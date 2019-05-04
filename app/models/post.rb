class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  # calls image_presence method to validate
  validate :image_presence

  def image_presence
    # generate an error message
    # unless an image is attached (true)
    errors.add(:image, "cant' be blank") unless image.attached?
  end
end