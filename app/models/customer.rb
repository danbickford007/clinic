class Customer < ActiveRecord::Base
  attr_accessible :name
  has_many :pets
  has_many :appointments
end
