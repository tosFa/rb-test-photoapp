class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader

  validate :picture_size

  private

  def picture_size
    if picture.size > 5.magabytes
      erros.add(:picture, "should be less then 5MB")
    end
  end
end
