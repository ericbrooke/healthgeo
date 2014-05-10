class Communication < ActiveRecord::Base
  belongs_to :provider
  belongs_to :contact
end
