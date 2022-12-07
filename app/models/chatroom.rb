class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :place, optional: true
end
