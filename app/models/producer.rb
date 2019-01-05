class Producer < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :producer_translations

  accepts_nested_attributes_for :producer_translations

  delegate :title, to: :localize, prefix: true, allow_nil: true

  def localize
    localize = producer_translations.find_by language: I18n.locale
  end

  def by_localize locale
    by_localize = producer_translations.find_by language: locale
  end
end