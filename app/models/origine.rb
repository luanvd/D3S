class Origine < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :origine_languages

  accepts_nested_attributes_for :origine_languages, allow_destroy: true

  UPDATE_ORIGINE_ATTRIBUTES = [:image, origine_languages_attributes: 
  	[:id, :origine_id, :left_text_1, :left_text_2, :left_text_3, :right_title_1, :right_title_2,
  	:right_title_3, :right_des_1, :right_des_2, :right_des_3, :_destroy]]
end
