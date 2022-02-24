Rails.application.routes.draw do

  root controller: :static_pages, action: :home

	resources :vim_commands
	resources :blogs
	resources :hash_tags

	get 'static_pages/login'

  get '/google6fa08eaf7749d52b.html',
    to: proc { |env| [200, {}, ["google-site-verification: google6fa08eaf7749d52b.html"]] }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
