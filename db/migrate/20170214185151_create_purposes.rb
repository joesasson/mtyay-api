class CreatePurposes < ActiveRecord::Migration[5.0]
  def change
    create_table :purposes do |t|
      t.string :name

      t.timestamps
    end
  end
end
