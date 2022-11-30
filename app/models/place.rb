class Place < ApplicationRecord
  has_one_attached :photo
  has_many :event_places
  has_many :events, through: :event_places

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
