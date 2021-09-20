class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :origin, null: false, foreign_key: { to_table: :airports}
      t.references :destination, null: false, foreign_key: { to_table: :airports}
      t.integer :duration, null: false
      t.datetime :start, null: false

      t.timestamps
    end
  end
end
