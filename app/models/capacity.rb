class Capacity < ActiveRecord::Base
  has_one :ability
  has_many :symptoms, through: :abliity
end
