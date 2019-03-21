Rails.application.routes.draw do

  namespace :api do
    resources :posts, only: [:show, :index, :create, :update]
    resources :comments, only: [:index, :create]
    resources :users, param: :_username
    post '/auth/login', to: 'authentication#login'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
