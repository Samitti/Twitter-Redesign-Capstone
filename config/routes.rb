Rails.application.routes.draw do
  root 'pages#index'
  resources :sessions  
  resources :users
  resources :posts 
  get '/index' => 'pages#index'
  get '/home' => 'pages#home'
  get '/profile' => 'pages#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
