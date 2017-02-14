class Account < ApplicationRecord
  has_secure_password
  has_one :profile
  validates :email, presence: true, uniqueness: true

end
