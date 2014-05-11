class Location < ActiveRecord::Base
  has_many :worksites
  has_many :providers, through: :worksites
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def find_by_radius(centre, point, radius)
    acc = []

    for ea in self.all do
      acc.push(ea) if in_circle?(centre, point, radius)
    end

    return acc
  end

  def in_circle?(centre, point, radius)
    Geocoder::Calculations.distance_between(centre, point) < radius
  end
end
