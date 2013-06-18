class Vet < ActiveRecord::Base
  attr_accessible :address, :city, :degree, :name, :state, :years, :zip
  validates_length_of :name, :maximum=>35
  validates_length_of :zip, :maximum=>5
  validates_length_of :years, :minimum=>1, :maximum=>100
  validates_presence_of :name
  has_many :pets
  has_many :appointments
end
