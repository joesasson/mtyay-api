require 'rails_helper'

describe Profile do
  it "is valid with existing account id, name, bio, and phone number" do
    john_smith_account = Account.new(email: 'john@smith.com', password: '1234')
    john_smith_account.save
    john_smith_account.profile = Profile.new(account_id: john_smith_account.id, name: 'John Smith',
      bio: "I am John Smith",
      phone: "123-456-9801" )
    expect(john_smith_account.profile).to be_valid
  end
  it "is invalid when account id doesn't exist" do
    john_smith_profile = Profile.new(account_id: 1, name: 'John Smith',
      bio: "I am John Smith",
      phone: "123-456-9801" )
    john_smith_profile.valid?
    expect(john_smith_profile.errors[:account]).to include("must exist")
  end
  it "is invalid without name" do
    john_smith_account = Account.new(email: 'john@smith.com', password: '1234')
    john_smith_account.save
    john_smith_account.profile = Profile.new(account_id: john_smith_account.id,
      bio: "I am John Smith",
      phone: "123-456-9801" )
    expect(john_smith_account.profile.errors[:name]).to include("can't be blank")
  end
  it "is invalid without bio" do
    john_smith_account = Account.new(email: 'john@smith.com', password: '1234')
    john_smith_account.save
    john_smith_account.profile = Profile.new(account_id: john_smith_account.id,
      name: 'John Smith',
      phone: "123-456-9801" )
    expect(john_smith_account.profile.errors[:bio]).to include("can't be blank")
  end
  it "is invalid without phone number" do
    john_smith_account = Account.new(email: 'john@smith.com', password: '1234')
    john_smith_account.save
    john_smith_account.profile = Profile.new(account_id: john_smith_account.id,
      name: 'John Smith',
      bio: "I am John Smith" )
    expect(john_smith_account.profile.errors[:phone]).to include("can't be blank")
  end
end
