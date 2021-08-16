class Offer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :name, :age, :photo, :race, :description, :location, presence: true
end
