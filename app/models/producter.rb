class Producter < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :producter_languages

  accepts_nested_attributes_for :producter_languages, allow_destroy: true

  UPDATE_PRODUCTER_ATTRIBUTES = [:image, producter_languages_attributes: 
    [:id, :producter_id, :left_text_1, :left_text_2, :right_text_1, :right_text_2,
    :right_text_3, :_destroy]]
end
