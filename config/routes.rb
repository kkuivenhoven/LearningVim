Rails.application.routes.draw do
  root controller: :static_pages, action: :home

  get 'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
