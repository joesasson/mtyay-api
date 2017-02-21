class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :zipcode, :phone, :picture,
  :twitter, :linkedin, :facebook, :instagram, :goodreads, :skype
  belongs_to :account
  has_many :commutes
end
