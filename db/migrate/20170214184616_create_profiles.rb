class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :account_id
      t.string :name
      t.text :bio
      t.string :picture
      t.string :zipcode
      t.string :phone
      t.integer :login_count
      t.datetime :last_login
      t.string :twitter
      t.string :linkedin
      t.string :facebook
      t.string :instagram
      t.string :goodreads
      t.string :skype
      t.timestamps
    end
  end
end
