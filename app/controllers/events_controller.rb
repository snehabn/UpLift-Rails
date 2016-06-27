class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to @event
		end

	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def event_params
		params.permit(:name, :start_date, :end_date, :organization_id, :street, :city, :state, :zip, :lat, :lng, :num_volunteers)
	end
end
