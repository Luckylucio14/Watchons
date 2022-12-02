class AddIconsToPlace < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :icons, :jsonb, array: true, default: []
  end
end
