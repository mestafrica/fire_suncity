Rails.application.routes.draw do

	resources :tenants
	
	resources :landlords

	resources :locations

	resources :accommodations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
