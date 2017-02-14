class Station < ApplicationRecord
  has_many :commutes, foreign_key: 'origin_id'
  has_many :commutes, foreign_key: 'destination_id'
end
