class VehiclesController < ApplicationController
	def index
		vehicle = Vehicle.all
		render json: vehicle
	end

	def show
		vehicle = Vehicle.find(params[:id])
		render json: vehicle
	end

	def create
		vehicle = Vehicle.new(vehicle_params)
		if vehicle.save
			render json: vehicle
		else
			render json: {error: 'Unable to create Vehicle' }, status: 400
		end
	end
end
