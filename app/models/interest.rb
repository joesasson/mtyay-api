class Interest < ApplicationRecord
  has_many :profiles, through: :profile_interests
  has_many :profile_interests
end
