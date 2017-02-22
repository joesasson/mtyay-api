class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :picture, :zipcode, :phone, 
  # Put the below line into a hash and send back as social media
  :twitter, :linkedin, :facebook, :instagram, :goodreads, :skype
  has_many :commutes
end
