class Contact < ActiveRecord::Base
  has_many :communications
  has_many :providers, through: :communications
end
