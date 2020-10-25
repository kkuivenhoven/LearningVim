Rails.application.routes.draw do

  root controller: :static_pages, action: :home

	resources :vim_commands
	resources :blogs

	get 'static_pages/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
