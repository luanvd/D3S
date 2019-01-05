class SliderShow < ApplicationRecord
  mount_uploader :title_image_1, ImageUploader
  mount_uploader :title_image_2, ImageUploader

  has_many :slider_images

  accepts_nested_attributes_for :slider_images, allow_destroy: true
end
