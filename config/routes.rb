Rails.application.routes.draw do
  resources :users
  root 'home#index'
  
  post '/signup' => 'home#signup'
  get '/signup' => 'home#signup_refresh'
end
