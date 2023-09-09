class CustomersController < ApplicationController
	def index
		customer = Customer.all
		render json: customer
	end

	def show
		customer = Customer.find(params[:id])
		render json: customer
	end

	def create
		customer = Customer.new(customer_params)
		if customer.save
			render json: customer
		else
			render json: {error: 'Unable to create Customer' }, status: 400
		end
	end
end
