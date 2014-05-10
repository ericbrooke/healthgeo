class Symptom < ActiveRecord::Base
  has_many :ability
  # has_one :capacity, through: :ability
end
