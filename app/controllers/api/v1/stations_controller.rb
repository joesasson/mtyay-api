module Api::V1
  class StationsController < ApplicationController

    def index         # returns all the stations filtering by params
      line = params[:line]
      @stations = Station.where(line: line).order(:name)
      render json: @stations
    end

    private

    def stations_params

    end
  end
end
