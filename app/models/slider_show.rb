class SliderShow < ApplicationRecord
  mount_uploader :title_image, ImageUploader

  has_many :slider_images

  accepts_nested_attributes_for :slider_images, allow_destroy: true
end
