class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude
  geocode_by :address
  after_validation :geocode, if: :address_changed?
end
