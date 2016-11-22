class Vacancy < ApplicationRecord
   has_many :reactions, dependent: :destroy
   validates :title, presence: true, length: { minimum: 5 }
   validates :description, presence: true
   validates :demands, presence: true
   validates :branche, presence: true
   validates :education_level, presence: true
   validates :experience, presence: true
end
