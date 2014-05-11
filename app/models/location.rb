class Location < ActiveRecord::Base
  has_many :worksites
  has_many :providers, through: :worksites

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.find_all_by_radius(centre, radius)
    acc = []

    for e in Location.all do
      acc.push(e) if e.in_circle?(centre, radius)
    end

    return acc
  end

  def in_circle?(centre, radius)
    Geocoder::Calculations.distance_between(centre, self) < radius
  end
end
