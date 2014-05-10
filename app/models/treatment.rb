# Join on ability and treatment
class Treatment < ActiveRecord::Base
  belongs_to :ability
  belongs_to :symptom
end
