class AddPlacesReferencetoChatroom < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :place, foreign_key: true
  end
end
