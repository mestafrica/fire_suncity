class AccommodationsController < ApplicationController

	def index
		@accommodations = Accommodation.all
	end

	def show
		@accommodation = Accommodation.find(params[:id])
	end

	def new
		@accommodation = Accommodation.new
	end
	
	def edit
		@accommodation = Accommodation.find(params[:id])
	end

	def create
		@accommodation = Accommodation.new(accommodation_params)

		if @accommodation.save
			redirect_to @accommodation
		else
			render 'new'
		end
	end

	def update
		@accommodation = Accommodation.find(params[:id])
		
		if @accommodation.update(accommodation_params)
			redirect_to @accommodation
		else
			render 'edit'
		end
	end

	def destroy
		@accommodation = Accommodation.find(params[:id])
		@accommodation.destroy

		redirect_to accommodations_path
	end

	private
		def accommodation_params
			params.require(:accommodation)
			.permit(
				:landlord_id,
				:accommodation_type_id,
				:location_id,
				:picture,
				:description,
				:price)
		end
end
