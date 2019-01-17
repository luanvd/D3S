class ModuleTheme < ApplicationRecord
  mount_uploader :img_about, ImageUploader
  mount_uploader :img_enga, ImageUploader
  mount_uploader :img_enga_producter, ImageUploader
  mount_uploader :img_enga_quality, ImageUploader
  mount_uploader :img_origine, ImageUploader
  mount_uploader :img_product, ImageUploader
  mount_uploader :img_producter, ImageUploader
  mount_uploader :img_facility, ImageUploader
  mount_uploader :img_contact, ImageUploader

  has_many :module_theme_languages

  accepts_nested_attributes_for :module_theme_languages, allow_destroy: true

  UPDATE_MODULE_THEME_ATTRIBUTES = [:name, module_theme_languages_attributes:
    [:id, :module_theme_id, :language, :img_about, :img_enga, :img_enga_producter,
     :img_enga_quality, :img_origine, :img_product, :img_producter, :img_facility,
     :img_contact, :_destroy]]
end