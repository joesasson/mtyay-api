class ConnectionSerializer < ActiveModel::Serializer
  attributes :id, :accepted, :requested_at, :invite_note, :denied
  belongs_to :requester_commute
  belongs_to :requestee_commute
end
