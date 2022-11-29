class Event < ApplicationRecord
    has_many :places, through: :event_places
    has_many :teams, through: :event_teams
end
