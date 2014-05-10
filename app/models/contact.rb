class Contact < ActiveRecord::Base
  has_one :provider
end
