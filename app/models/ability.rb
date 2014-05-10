class Ability < ActiveRecord::Base
  has_many :capabilities
  has_many :providers, through: :capabilities
  belongs_to :capacity
  has_many :treatments
  has_many  :symptoms, through: :treatments
end
