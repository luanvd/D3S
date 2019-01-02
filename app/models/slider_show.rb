class SliderShow < ApplicationRecord
  has_many :slider_images

  accepts_nested_attributes_for :slider_images, reject_if: ->(attributes){ attributes['image'].blank? }, allow_destroy: true
end
