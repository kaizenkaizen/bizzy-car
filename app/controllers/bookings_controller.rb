class BookingsController < ApplicationController
	def index
		booking = Booking.all
		render json: booking
	end

	def show
		booking = Booking.find(params[:id])
		render json: booking
	end

	def destroy
		booking = Booking.find(params[:id])
		if booking
			booking.destroy
			render json: booking, status: 200
		else
			render json: {error: 'Unable to cancel Booking' }, status: 400
		end
	end

	def create
		# puts "we made it here wooo"
		# puts params['booking']
		# puts booking_params
		# puts "we made it here woo end "

		# booking = Booking.new(booking_params['booking'])
		booking = Booking.new(booking_params)

		# puts "we made it here2"

		
		if booking.save
			# puts "we made it here3"
			render json: booking
			
		else
			puts booking.errors.full_messages
			# puts "we made it here4"
			render json: {error: 'Unable to create Booking' }, status: 400
		end
	end

	def booking_params
		# puts "calling params"
		# puts params['booking']
		# puts params
		# puts "params end"
		# params['booking'].require(:customer_id).permit(:location, :id, :start, :end, :vehicle_id)
		# params.permit(:controller, :action, :booking => [:start])
		params.permit(:start, :end, :location, :id, :vehicle_id, :customer_id)
	end
end
