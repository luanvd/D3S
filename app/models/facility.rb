class Facility < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader

  has_many :facility_languages

  accepts_nested_attributes_for :facility_languages, allow_destroy: true

  UPDATE_FACILITY_ATTRIBUTES = [:image, :video, facility_languages_attributes: [:id, :facility_id, :language,
    :left_text_1, :left_text_2, :right_text_1, :right_text_2, :right_text_3]]
end
