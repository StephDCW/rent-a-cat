class Reservation < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  validates :start_date, :end_date, :user_id, :offer_id, presence: true
  validates :total_price, numericality: true, presence: true
end
