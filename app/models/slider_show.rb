class SliderShow < ApplicationRecord

  has_many :slider_images
  has_many :slider_show_translations

  accepts_nested_attributes_for :slider_images, allow_destroy: true
  accepts_nested_attributes_for :slider_show_translations, allow_destroy: true

  delegate :title_1, :title_2, to: :localize, prefix: true, allow_nil: true

  def localize
    localize = slider_show_translations.find_by language: I18n.locale
  end
end
