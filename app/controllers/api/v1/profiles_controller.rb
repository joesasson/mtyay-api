module Api::V1
  class ProfilesController < ApplicationController
    def create
      token = request.headers['HTTP_AUTHORIZATION']
      account_info = Auth.decode(token)
      @profile = Profile.new(profile_params)
      @profile.account_id = account_info['account_id']
      if @profile.save
        render json: @profile
      end
    end

    # def index
    #   @account = current_account
    #
    #   if params[:matches]
    #     @my_commutes = @account.profile.commutes  #all of matts commutes
    #     @profiles = @my_commutes.map do |commute|
    #       Profile.joins(:commutes).where("origin_id = ? AND time= ?", commute.origin_id, commute.time).where.not("profile_id = ?", @account.profile.id)
    #     end
    #     @profiles = @profiles[0]
    #     render json: @profiles
    #   end
    # end

    def index
      @account = current_account

      if params[:matches]
        @my_commutes = @account.profile.commutes  #all of matts commutes
        @commutes = @my_commutes.map do |commute|
          Commute.joins(:profile).where("origin_id = ? AND time= ?", commute.origin_id, commute.time).where.not("profile_id = ?", @account.profile.id)
        end
        @commutes = @commutes[0]
        render json: @commutes
      end
    end

    private

    def profile_params
      params.require(:profile).permit(:name, :bio, :zipcode, :phone,
      :linkedin, :facebook, :instagram, :goodreads, :picture, :twitter, :skype)
    end

  end
end
