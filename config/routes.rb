Rails.application.routes.draw do
  get 'static_pages/about'

  root controller: :static_pages, action: :home

  get 'static_pages/help'

  get 'static_pages/maps'

  get 'static_pages/total_profits_table'

  get 'static_pages/sales_channel_info'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
