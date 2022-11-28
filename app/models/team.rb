class Team < ApplicationRecord
    belongs_to: events through: event_teams
end
