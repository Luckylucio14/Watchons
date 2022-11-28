class CreateEventPlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :event_places do |t|
      t.references :event, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
