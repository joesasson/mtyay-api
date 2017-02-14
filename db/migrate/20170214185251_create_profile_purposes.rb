class CreateProfilePurposes < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_purposes do |t|
      t.integer :profile_id
      t.integer :purpose_id

      t.timestamps
    end
  end
end
