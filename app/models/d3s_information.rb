class D3sInformation < ApplicationRecord
  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader

  has_many :d3s_information_languages

  accepts_nested_attributes_for :d3s_information_languages, allow_destroy: true

  delegate :title_1, :title_2, :des_1, :des_2, :des_middle, to: :localize, prefix: true, allow_nil: true

  def localize
    localize = d3s_information_languages.find_by language: I18n.locale
  end

  UPDATE_D3S_INFOMATION_ATTRIBUTES = [:image_1, :image_2, d3s_information_languages_attributes: 
  	[:id, :des_information_id, :title_1, :title_2, :des_1, :des_2, :des_middle, :_destroy]]
end
