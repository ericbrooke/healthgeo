class Worksite < ActiveRecord::Base
  belongs_to :provider
  belongs_to :location

  accepts_nested_attributes_for :provider
  accepts_nested_attributes_for :location
end
