require 'rails_helper'

describe Account do
  it "is valid with an email and password" do
    account = Account.new(email: 'valid@valid.com', password: '1234')
    expect(account).to be_valid
  end
  it "is invalid without an email" do
    account = Account.new(email: '', password: '1234')
    account.valid?
    expect(account.errors[:email]).to include("can't be blank")
  end
  it "is invalid with a duplicate email address" do
    account = Account.new(email: 'repeat@valid.com', password: '1234')
    account.save
    account2 = Account.new(email: 'repeat@valid.com', password: '1234')
    account2.valid?
    expect(account2.errors[:email]).to include("has already been taken")
  end
  it "is invalid without a password" do
    account = Account.new(email: 'valid@valid.com', password: '')
    account.valid?
    expect(account.errors[:password]).to include("can't be blank")
  end
  it "is invalid if password and confirmation don't match" do
    account = Account.new(email: 'valid@valid.com', password: 'non-matching', password_confirmation: 'nonmatching')
    account.valid?
    expect(account.errors[:password_confirmation]).to include("doesn't match Password")
  end
  it "is valid if password and confirmation do match" do
    account = Account.new(email: 'valid@valid.com', password: 'matching', password_confirmation: 'matching')
    expect(account).to be_valid
  end
end
