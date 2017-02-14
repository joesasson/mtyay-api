class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.integer :mta_id
      t.text :gps
      t.string :line
      t.text :notes

      t.timestamps
    end
  end
end
