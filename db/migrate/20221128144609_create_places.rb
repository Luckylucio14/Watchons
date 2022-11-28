class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :caracteristic
      t.string :picture
      t.string :address
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
