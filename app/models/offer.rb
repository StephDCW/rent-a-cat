class Offer < ApplicationRecord
  belong_to :user
  validates :name, :age, :photo, :specie, :description, presence: true, uniqueness: true
end
