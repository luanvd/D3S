class EngagementTranslation < ApplicationRecord
  belongs_to :engagement

  validates :content, presence: true

  enum language: Settings.translation_languages.map(&:to_sym)
end
