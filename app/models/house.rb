class House < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :surveys
end
