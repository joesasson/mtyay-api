module Api::V1
  class CommutesController < ApplicationController
    def create
      @account = current_account
      # this is the account object related to the post request
      @commute = Commute.new(commute_params)
      @commute.profile_id = @account.profile.id
      @commute.available = true

      if @commute.save
        render json: @commute
      end
    end

    def index
      @account = current_account
      if params[:matches]
        @my_commutes = @account.profile.commutes  #all of matts commutes
        @commutes = @my_commutes.map do |commute|
          Commute.joins(:profile).where("origin_id = ? AND time= ?", commute.origin_id, commute.time).where.not("profile_id = ?", @account.profile.id)
        end
        render json: @commutes.flatten.uniq
      else
        @commutes = Commute.where(profile_id: @account.profile.id)
        render json: @commutes
      end
    end

    private

    def commute_params
      params.require(:commute).permit(:origin_id, :destination_id, :time, :nickname)
    end

  end
end
