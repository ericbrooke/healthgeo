class Location < ActiveRecord::Base
  has_many :worksites
  has_many :providers, through: :worksites
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
