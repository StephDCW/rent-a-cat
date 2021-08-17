class Offer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :name, :age, :race, :description, :location, presence: true
  validates :price, numericality: true, presence: true
end
