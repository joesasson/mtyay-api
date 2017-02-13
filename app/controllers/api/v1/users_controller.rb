module Api::V1
  class UsersController < ApplicationController
    
    def create
      @new_user = User.new(user_params)

      if @new_user.save
        render json: @new_user, status: 201
      
      else
        #consider adding error message here
        render status: 403
      end
   
    end

    def show
      @user = User.find(params[:id])
      render json: @user, serializer: UserSerializer
    end
  
  private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
  


  end
end

private