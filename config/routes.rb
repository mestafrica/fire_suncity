Rails.application.routes.draw do

  get '/showcase/:id', to: 'welcome#show', as: :showcase
  get '/showcase/:id/contact', to: 'welcome#contact', as: :contact

	resources :tenants

	resources :landlords

	resources :locations

	resources :accommodations

	resources :accommodation_types

	root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
