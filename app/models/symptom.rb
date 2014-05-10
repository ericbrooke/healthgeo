class Symptom < ActiveRecord::Base
  has_many :treatments
  has_many :abilities, through: :treatments
end
