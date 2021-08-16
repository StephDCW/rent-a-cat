class Offer < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user, dependent: :destroy
  validates :name, :age, :photo, :race, :description, :location, presence: true
=======
  belongs_to :user
  validates :name, :age, :photo, :specie, :description, presence: true
>>>>>>> 918dbef2eeda34bdc1b8b8e5bee973b645481c1a
end
