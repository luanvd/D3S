class Engagement < ApplicationRecord
  has_many :engagement_translations

  accepts_nested_attributes_for :engagement_translations

  delegate :title, :content, to: :localize, prefix: true, allow_nil: true

  def localize
    localize = engagement_translations.find_by language: I18n.locale
  end

  def by_localize locale
    by_localize = engagement_translations.find_by language: locale
  end
end