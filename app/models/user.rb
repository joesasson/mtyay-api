class User < ApplicationRecord
  
  has_many :commutes
  has_secure_password
  validates :email, presence: true, uniqueness: true

end
