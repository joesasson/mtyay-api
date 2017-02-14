module Api::V1
  class AccountsController < ApplicationController

    def create
      @account = Account.new(account_params)
      if @account.save
        jwt = Auth.encrypt({ account_id: @account.id })
        render json: { jwt: jwt, id: @account.id, email: @account.email, status: 201 }
      else
        error = @account.save
        render json: { errors: @account.errors.full_messages }, status: 403
      end

    end

    def show
      @account = Account.find(params[:id])
      render json: @account, serializer: AccountSerializer
    end

    def index
      @accounts = Account.all
      render json: @accounts
    end

  private
    def account_params
        params.permit(:email, :password, :password_confirmation)
    end



  end
end
