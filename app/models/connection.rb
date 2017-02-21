class Connection < ApplicationRecord
  belongs_to :requester_commute, class_name: 'Commute'
  belongs_to :requestee_commute, class_name: 'Commute'

  scope :pending, -> { where(accepted: false, denied: false) }
  scope :approved, -> { where(accepted: true, denied: false) }
  scope :denied, -> { where(accepted: false, denied: true) }

  scope :by_commute_id, -> (commute_id) { where( requestee_commute_id: commute_id).or(where(requester_commute_id: commute_id)) }
  # ex usage: Connection.by_profile_id(5)

  def self.all_by_profile_id(profile_id)
    @profile = Profile.find(profile_id)
    @commutes = @profile.commute_ids
    all.by_commute_id(@commutes)
  end

end
