class Offer < ApplicationRecord
  belongs_to :user
  validates :name, :age, :photo, :specie, :description, presence: true
end
