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
      @commutes = Commute.where(profile_id: @account.profile.id)
      render json: @commutes
    end

    private

    def commute_params
      params.require(:commute).permit(:origin_id, :destination_id, :time, :nickname)
    end

  end
end
