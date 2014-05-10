class Capability < ActiveRecord::Base
  belongs_to :ability
  belongs_to :provider
end
