class Reservation < ApplicationRecord
  validates :total_price, :start_date, :end_date, presence: true
end
