class CommuteSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :time
  belongs_to :profile
  belongs_to :origin
  belongs_to :destination
end
