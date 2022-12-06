class AddCityToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :city, :string
  end
end
