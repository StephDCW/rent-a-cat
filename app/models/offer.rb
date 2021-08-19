class Offer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_one_attached :photo
  has_many :reservations
  # has_many_attached :photos
  validates :name, :age, :race, :description, :location, :user_id, presence: true
  validates :price, numericality: true, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
