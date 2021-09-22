class SeparateDateAndTimeInFlightsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :flights, :start, :datetime, null: false

    add_column :flights, :date, :date
    add_column :flights, :time, :time
  end
end
