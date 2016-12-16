class Vacancy < ApplicationRecord
   has_many :reactions, dependent: :destroy
   has_many :social_media_modules, dependent: :destroy

   attr_accessor :name, :module_horizontal_position, :module_vertical_position, :module_width, :module_height

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
