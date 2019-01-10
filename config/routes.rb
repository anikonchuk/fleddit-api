Rails.application.routes.draw do

  namespace :api do
    resources :posts, except: [:new, :edit]
    resources :users, only: [:create]
    resources :sessions, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
