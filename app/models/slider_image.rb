class SliderImage < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :slider_show

  validates :sort_index, uniqueness: { scope: :slider_show_id, allow_blank: true }
end
