class Ability < ActiveRecord::Base
  belongs_to :provider
  belongs_to :capacity
  has_and_belongs_to_many :symptoms
end
