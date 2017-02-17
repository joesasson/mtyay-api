module Api::V1
  class MatchesController < ApplicationController

    def index
      @account = current_account

      if params[:id]
        @my_commute = Commute.find(params[:id])
        @commutes = Commute.joins(:profile).where("origin_id = ? AND time= ?", @my_commute.origin_id, @my_commute.time).where.not("profile_id = ?", @account.profile.id)
      else
        @my_commutes = @account.profile.commutes  #all of matts commutes
        @commutes = @my_commutes.map do |commute|
          Commute.joins(:profile).where("origin_id = ? AND time= ?", commute.origin_id, commute.time).where.not("profile_id = ?", @account.profile.id).flatten!
        end

      end
        render json: @commutes.uniq
    end

    private

  end
end
