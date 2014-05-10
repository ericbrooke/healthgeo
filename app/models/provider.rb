# The organizations, doctor, nurses, or other service provider
class Provider < ActiveRecord::Base
  has_many :contacts
  has_many :locations
  has_many :capabilities
  has_many :abilities, through: :capabilities
end
