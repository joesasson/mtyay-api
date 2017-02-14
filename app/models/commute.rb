class Commute < ApplicationRecord
  belongs_to :profile
  belongs_to :origin, class_name: 'Station'
  belongs_to :destination, class_name: 'Station'
end
