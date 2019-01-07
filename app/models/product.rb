class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :product_translations

  accepts_nested_attributes_for :product_translations

  delegate :title, :content, to: :localize, prefix: true, allow_nil: true

  def localize
    localize = product_translations.find_by language: I18n.locale
  end

  def by_localize locale
    by_localize = product_translations.find_by language: locale
  end
end
