module Api::V1
  class SessionsController < ApplicationController

    def create
      @account = Account.find_by(email: params[:email])
      if @account && @account.authenticate(params[:password])
        jwt = Auth.encrypt({ account_id: @account.id })
        render json: { jwt: jwt, id: @account.id, email: @account.email, status: 201 }
      else
        render status: 401
      end
    end

    private

    def sessions_params

    end
  end
end
