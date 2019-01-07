class ProductTranslation < ApplicationRecord
  belongs_to :product

  validates :title, presence: true

  scope :by_language, -> (lang) { where(language: lang)  }
 
  enum language: Settings.translation_languages.map(&:to_sym)
end