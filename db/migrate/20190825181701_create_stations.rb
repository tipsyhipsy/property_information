class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :rute_name
      t.string :station_name
      t.integer :walking_minutes
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
