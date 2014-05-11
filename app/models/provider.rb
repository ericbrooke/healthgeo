# The organizations, doctor, nurses, or other service provider
class Provider < ActiveRecord::Base
  has_many :communications
  has_many :contacts,through: :communications

  has_many :worksites, inverse_of: :location
  has_many :locations, through: :worksites

  has_many :capabilities
  has_many :abilities, through: :capabilities

  accepts_nested_attributes_for :locations, :abilities, :contacts

  # scope :named, -> (name) { where(name: name) }

end
