class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :competition
      t.string :location
      t.time :hour
      t.date :date
      t.string :channel

      t.timestamps
    end
  end
end
