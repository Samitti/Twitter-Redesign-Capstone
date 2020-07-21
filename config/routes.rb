Rails.application.routes.draw do
  root 'pages#index'   
  resources :users
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions 
  resources :posts
  resources :followings 
  get '/index' => 'pages#index'
  get '/home' => 'pages#home'
  get '/profile' => 'pages#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
