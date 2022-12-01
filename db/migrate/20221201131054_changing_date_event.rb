class ChangingDateEvent < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :date, :datetime
    rename_column :events, :date, :full_datetime
    remove_column :events, :hour
  end
end
