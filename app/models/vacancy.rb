class Vacancy < ApplicationRecord
   has_many :reactions, dependent: :destroy
   has_many :social_media_modules, dependent: :destroy

   attr_accessor :name, :module_horizontal_position, :module_vertical_position, :module_width, :module_height

   #contact-gegevens-module
   attr_accessor :contact_fields_name, :contact_fields_horizontal_position, :contact_fields_vertical_position, :contact_fields_width, :contact_fields_height

   #social-media-module
   attr_accessor :social_media_name, :social_media_horizontal_position, :social_media_vertical_position, :social_media_width, :social_media_height

   accepts_nested_attributes_for :social_media_modules

   serialize :modules_array, Hash

   def self.search(search)
      where("title LIKE ?", "%#{search}%")
   end

end
