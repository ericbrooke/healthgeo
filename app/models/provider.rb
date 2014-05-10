# The organizations, doctor, nurses, or other service provider
class Provider < ActiveRecord::Base
  has_many :communications
  has_many :contacts,through: :communications

  has_many :worksites
  has_many :locations, through: :worksites

  has_many :capabilities
  has_many :abilities, through: :capabilities
end
