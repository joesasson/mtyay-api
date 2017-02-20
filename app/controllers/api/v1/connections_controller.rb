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

    def index
      @current_profile = current_profile
      @commute_ids = @current_profile.commutes.pluck(:id)
      @accepted_connections1 = @commute_ids.map do |commute_id|
        Connection.where("requester_commute_id = ? AND accepted = ?", commute_id, true)
      end
      @accepted_connections2 = @commute_ids.map do |commute_id|
        Connection.where("requestee_commute_id = ? AND accepted = ?", commute_id, true)
      end
      @accepted_conns = @accepted_connections1.concat(@accepted_connections2).flatten
      render json: @accepted_conns
    end

    def requests
      @current_profile = current_profile
      @commute_ids = @current_profile.commutes.pluck(:id)
      @one = @commute_ids.map do |commute_id|
        Connection.where("requester_commute_id = ? AND accepted = ? AND denied = ?", commute_id, false, false)
      end

      @two = @commute_ids.map do |commute_id|
        Connection.where("requestee_commute_id = ? AND accepted = ? AND denied = ?", commute_id, false, false)
      end

      @three = @one.concat(@two).flatten
      render json: @three
    end

    def update
      @connection = Connection.find(params[:id])
      if params[:accepted] === true
        @connection.update(accepted: true, accepted_at: Time.now)
        @connection.save
      elsif params[:denied] === true
        @connection.update(denied: true, denied_at: Time.now)
        @connection.save
      end
      render json: @connection
    end

    private

    def connection_params
      params.require(:connection).permit(:requester_commute_id, :requestee_commute_id, :accepted, :requested_at, :accepted_at, :denied, :denied_at)
    end
  end
end
