class Capacity < ActiveRecord::Base
  belongs_to :ability
  belongs_to :symptoms, through: :ability
end
