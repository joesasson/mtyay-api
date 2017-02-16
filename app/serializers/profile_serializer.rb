class ProfileSerializer < ActiveModel::Serializer
  attributes :name, :id, :bio, :phone, :zipcode
  has_many :commutes
end
