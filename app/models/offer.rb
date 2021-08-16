class Offer < ApplicationRecord
  belong_to :user
  validates :name, :age, :specie, presence: true, uniqueness: true
end
