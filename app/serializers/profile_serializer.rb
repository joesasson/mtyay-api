class ProfileSerializer < ActiveModel::Serializer
  attributes :name, :bio, :zipcode
  has_many :commutes
end
