class CreateCommutes < ActiveRecord::Migration[5.0]
  def change
    create_table :commutes do |t|
      t.integer :profile_id
      t.integer :origin_id
      t.integer :destination_id
      t.string :time
      t.string :nickname
      t.boolean :available

      t.timestamps
    end
  end
end
