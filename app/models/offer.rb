class Offer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reservations
  has_many_attached :photos
  validates :name, :age, :race, :description, :location, :user_id, :photo, presence: true
  validates :price, numericality: true, presence: true
end
