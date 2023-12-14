class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo, dependent: :destroy

  validates :name, :type, :address, :price_per_day, :description, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :description, length: { minimum: 5 }
end
