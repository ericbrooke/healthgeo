# The organizations, doctor, nurses, or other service provider
class Provider < ActiveRecord::Base
  attr_accessible :name, :type

  has_many :contacts, :locations, :abilities
end
