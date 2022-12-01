class Event < ApplicationRecord
  has_many :event_places
  has_many :places, through: :event_places
  has_many :event_teams
  has_many :teams, through: :event_teams

  def hour(hour)
    full_datetime.strftime("%H:%M")
  end

  def date
    full_datetime.strftime("%d/%m/%Y")
  end
end
