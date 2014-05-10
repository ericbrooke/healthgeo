class Ability < ActiveRecord::Base
  has_one :capacity
  has_many :symptoms
end
