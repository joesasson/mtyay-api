class Profile < ApplicationRecord
  belongs_to :account
  has_many :commutes
  has_many :stations, through: :commutes
  has_many :profile_interests
  has_many :interests, through: :profile_interests
  has_many :profile_purposes
  has_many :purposes, through: :profile_purposes
end
