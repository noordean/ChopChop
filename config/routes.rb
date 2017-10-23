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
end
