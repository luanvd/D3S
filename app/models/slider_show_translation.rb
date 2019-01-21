class SliderShowTranslation < ApplicationRecord
  mount_uploader :title_1, ImageUploader
  mount_uploader :title_2, ImageUploader
  belongs_to :slider_show

  scope :by_language, -> (lang) { where(language: lang)  }
 
  enum language: Settings.translation_languages.map(&:to_sym)
end
