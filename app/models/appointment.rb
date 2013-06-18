class Appointment < ActiveRecord::Base
  attr_accessible :customer_id, :pet_id, :reason_for_visit, :reminder, :visit_date, :vet_id
  belongs_to :customer
  belongs_to :vet
  belongs_to :pet
end
