class Place < ApplicationRecord
  has_one_attached :photo
  has_many :event_places
  has_many :events, through: :event_places
end
