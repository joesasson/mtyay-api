module Api::V1
  class MatchesController < ApplicationController

    def index
      @account = current_account

      if params[:id] #matches for a specific commute
        @my_commute = Commute.find(params[:id])

        @my_connections = Connection.all_by_profile_id(@account.profile.id)
        .pluck(:requestee_commute_id, :requester_commute_id).flatten.uniq

        @matching_commutes =
        Commute.joins(:profile).where(origin_id: @my_commute.origin_id,
        time: @my_commute.time).where.not(profile_id: @account.profile.id,
        id: @my_connections)

      else
        @my_commutes = @account.profile.commutes

        @my_stations = @account.profile.commutes.pluck(:origin_id)  #all of matts commutes

        @my_departures = @account.profile.commutes.pluck(:time)

        @my_connections = Connection.all_by_profile_id(@account.profile.id)
        .pluck(:requestee_commute_id, :requester_commute_id).flatten.uniq

        @matching_commutes = Commute.joins(:profile).where(origin_id: @my_stations,
        time: @my_departures).where.not(profile_id: @account.profile.id, id: @my_connections)


      end
        render json: @matching_commutes
    end

    private

  end
end
