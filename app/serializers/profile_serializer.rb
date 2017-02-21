class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :zipcode, :phone
  has_many :commutes
end
