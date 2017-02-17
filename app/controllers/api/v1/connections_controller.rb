module Api::V1
  class ConnectionsController < ApplicationController

    def create
      @connection = Connection.new(connection_params)
      @connection.requested_at = Time.now
      if @connection.save
        render json: @connection
      else
        render status: 403
      end
    end

    private

    def connection_params
      params.require(:connection).permit(:requester_commute_id, :requestee_commute_id)
    end
  end
end
