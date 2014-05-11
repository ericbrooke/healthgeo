class Ability < ActiveRecord::Base
  belongs_to :capacity

  has_many :capabilities
  has_many :providers, through: :capabilities

  has_many :treatments
  has_many  :symptoms, through: :treatments

  # scope :has_capacity, -> { (where ) }
end
