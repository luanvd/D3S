class ProducerTranslation < ApplicationRecord
  belongs_to :producer

  validates :title, presence: true

  enum language: Settings.translation_languages.map(&:to_sym)
end
