class Popup < ApplicationRecord
  has_many :popup_translations

  accepts_nested_attributes_for :popup_translations
end