class PopupTranslation < ApplicationRecord
  belongs_to :popup

  enum language: Settings.translation_languages.map(&:to_sym)
end