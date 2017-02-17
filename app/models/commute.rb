class Commute < ApplicationRecord
  belongs_to :profile
  belongs_to :origin, class_name: 'Station'
  belongs_to :destination, class_name: 'Station'
  has_many :connections, foreign_key: 'requester_commute_id'
  has_many :connections, foreign_key: 'requestee_commute_id'

end
