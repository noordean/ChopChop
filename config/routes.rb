Rails.application.routes.draw do
  resources :items
  get 'sessions/new'

  resources :users
  root 'home#index'
  
  post '/signup' => 'home#signup'
  get '/signup' => 'home#signup_refresh'

  post '/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'

  post '/add' => 'items#add_item'
  
  post '/search' => 'items#search_items'

  get '/breakfast' => 'items#breakfast'
  get '/lunch' => 'items#lunch'
  get '/dinner' => 'items#dinner'
  get '/dessert' => 'items#dessert'
  get '/fruits' => 'items#fruits'
end
