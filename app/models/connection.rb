class Connection < ApplicationRecord
  belongs_to :requester_commute, class_name: 'Commute'
  belongs_to :requestee_commute, class_name: 'Commute'
end
