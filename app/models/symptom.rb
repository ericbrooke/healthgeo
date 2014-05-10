class Symptom < ActiveRecord::Base
  belongs_to :capacity, through: :ability
end
