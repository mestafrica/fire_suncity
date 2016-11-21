class WelcomeController < ApplicationController
  
  def index
	@accommodations = Accommodation.all
  	if params[:search]
  		@accommodations = Accommodation.search_by_description(params[:search])
  	else
		@accommodations = Accommodation.all
  	end
  end

  def show
  	@accommodation = Accommodation.find(params[:id])
  end

  def contact
    @accommodation = Accommodation.find(params[:id])
  end

end
