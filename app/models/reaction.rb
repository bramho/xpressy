class Reaction < ApplicationRecord
  belongs_to :vacancy

  geocoded_by :full_address
  after_validation :geocode, :if => :postal_code_changed?

  def full_address
     [postal_code, city].compact.join(', ')
  end
end
