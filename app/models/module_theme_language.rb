class ModuleThemeLanguage < ApplicationRecord
  mount_uploader :img_about, ImageUploader
  mount_uploader :img_enga, ImageUploader
  mount_uploader :img_enga_producter, ImageUploader
  mount_uploader :img_enga_quality, ImageUploader
  mount_uploader :img_origine, ImageUploader
  mount_uploader :img_product, ImageUploader
  mount_uploader :img_producter, ImageUploader
  mount_uploader :img_facility, ImageUploader
  mount_uploader :img_contact, ImageUploader

  belongs_to :module_theme
end
