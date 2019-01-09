class Popup < ApplicationRecord
  has_many :popup_translations

  accepts_nested_attributes_for :popup_translations

  delegate :title, :content, to: :localize, prefix: true, allow_nil: true

  def localize
    localize = popup_translations.find_by language: I18n.locale
  end
end