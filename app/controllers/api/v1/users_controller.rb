module Api::V1
  class AccountsController < ApplicationController

    def create
      @new_account = Account.new(account_params)

      if @new_account.save
        render json: @new_account, status: 201

      else
        #consider adding error message here
        render status: 403
      end

    end

    def show
      @account = Account.find(params[:id])
      render json: @account, serializer: AccountSerializer
    end

  private
    def account_params
        params.require(:account).permit(:email, :password, :password_confirmation)
    end



  end
end

private
