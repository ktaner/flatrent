class Property < ApplicationRecord
  has_many :bookings
  validates_presence_of :price
  belongs_to :user
end
