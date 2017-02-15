module Api::V1
  class ProfilesController < ApplicationController
    def create
      account_info = Auth.decode(request.headers['HTTP_AUTHORIZATION'])
      @profile = Profile.new(profile_params)
      @profile.account_id = account_info['account_id']
      if @profile.save
        render json: @profile
      end
    end

    private

    def profile_params
      params.require(:profile).permit(:name, :bio, :zipcode, :phone,
      :linkedin, :facebook, :instagram, :goodreads, :picture, :twitter, :skype)
    end

  end
end
