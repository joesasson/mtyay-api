module Api::V1
  class CommutesController < ApplicationController
    def create
      token = request.headers['HTTP_AUTHORIZATION']
      account_info = Auth.decode(token)
      @profile = Profile.new(profile_params)
      @profile.account_id = account_info['account_id']
      if @profile.save
        render json: @profile
      end
    end

    private

    def commute_params
    end

  end
end
