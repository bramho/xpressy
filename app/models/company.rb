class Company < ApplicationRecord
   validates :name, presence: true, length: { minimum: 5 }
   validates :description, presence: true
   validates :address, presence: true
   validates :postal_code, presence: true
   validates :city, presence: true
end
