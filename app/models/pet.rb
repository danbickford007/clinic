class Pet < ActiveRecord::Base
  attr_accessible :age, :breed, :last_visit, :name, :pet_type, :weight, :customer_id
  belongs_to :customer
  belongs_to :vet
  has_one :appointment
end
