class Vacancy < ApplicationRecord
   has_many :reactions, dependent: :destroy
   validates :title, presence: true, length: { minimum: 5 }
   validates :description, presence: true
   validates :demands, presence: true
   validates :branche, presence: true
   validates :education_level, presence: true
   validates :experience, presence: true
   validates :location, presence: true
   # validates :modules_array, presence: true
   serialize :modules_array, Array
   serialize :positions_array, Array
end
