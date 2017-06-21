class Rental < ActiveRecord::Base
  validates :name, :presence => true
  has_many :relationals
end
