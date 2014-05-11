class Location < ActiveRecord::Base
  has_many :worksites, inverse_of: :provider
  has_many :providers, through: :worksites

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  scope :within_circle, -> (centre, radius) { self.find_all_by_radius(centre, radius) }
  # scope :has_provider, -> (provider) {}

  def self.find_all_by_radius(centre, radius)
    acc = []

    for loc in Location.all do
      acc.push(loc) if loc.in_circle?(centre, radius)
    end

    return acc
  end

  def in_circle?(centre, radius)
    Geocoder::Calculations.distance_between(centre, self) < radius
  end
end
