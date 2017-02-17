class CreateConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :connections do |t|
      t.integer :requester_commute_id
      t.integer :requestee_commute_id
      t.boolean :accepted, default: false
      t.datetime :requested_at
      t.datetime :accepted_at
      t.text :invite_note
      t.boolean :denied, default: false
      t.datetime :denied_at

      t.timestamps
    end
  end
end
