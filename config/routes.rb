Rails.application.routes.draw do
  get "locations/search"
  get "weather/show"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'forecasts#new'
  resource :forecast, :only => [:new]
  get '/forecast/create' => 'forecasts#create'
  get 'locations/search/:query' => 'locations#search'

  #root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
