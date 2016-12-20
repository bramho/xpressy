class Vacancy < ApplicationRecord
   has_many :reactions, dependent: :destroy
   has_many :social_media_modules, dependent: :destroy

   attr_accessor :name, :module_horizontal_position, :module_vertical_position, :module_width, :module_height

   #contact-gegevens-module
   attr_accessor :contact_fields_name, :contact_fields_horizontal_position, :contact_fields_vertical_position, :contact_fields_width, :contact_fields_height

   #social-media-module
   attr_accessor :social_media_name, :social_media_horizontal_position, :social_media_vertical_position, :social_media_width, :social_media_height

   accepts_nested_attributes_for :social_media_modules
   # has_many :vacancy_modules, dependent: :destroy
   # validates :title, presence: true, length: { minimum: 5 }
   # validates :description, presence: true
   # validates :demands, presence: true
   # validates :branche, presence: true
   # validates :education_level, presence: true
   # validates :experience, presence: true
   # validates :location, presence: true
   #
   # validates :name, presence: true
   # validates :module_vertical_position, presence: true
   # validates :module_horizontal_position, presence: true
   # validates :module_width, presence: true
   # validates :module_height, presence: true

   # validates :modules_array, presence: true
   serialize :modules_array, Hash
   serialize :horizontal_positions_array, Array
   serialize :vertical_positions_array, Array
   serialize :width_size_array, Array
   serialize :hight_size_array, Array
end
