class AccommodationTypesController < ApplicationController

	def index
		@accommodation_types = AccommodationType.all
	end

	def show
		@accommodation_type = AccommodationType.find(params[:id])
	end

	def new
		@accommodation_type = AccommodationType.new
	end
	
	def edit
		@accommodation_type = AccommodationType.find(params[:id])
	end

	def create
		@accommodation_type = AccommodationType.new(accommodation_type_params)

		if @accommodation_type.save
			redirect_to @accommodation_type
		else
			render 'new'
		end
	end

	def update
		@accommodation_type = AccommodationType.find(params[:id])
		
		if @accommodation_type.update(accommodation_type_params)
			redirect_to @accommodation_type
		else
			render 'edit'
		end
	end

	def destroy
		@accommodation_type = AccommodationType.find(params[:id])
		@accommodation_type.destroy

		redirect_to accommodation_types_path
	end

	private
		def accommodation_type_params
			params.require(:accommodation_type).permit(:name)
		end
end
