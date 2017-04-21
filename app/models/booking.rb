class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :property

  def total_price
    days = (self.end - self.begin) / 1.day
    days * property.price
  end
end
