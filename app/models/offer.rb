class Offer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reservations
  validates :name, :age, :race, :description, :location, :user_id, presence: true
  validates :price, numericality: true, presence: true
end
