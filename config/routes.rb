Rails.application.routes.draw do

  namespace :api do
    resources :posts, only: [:show, :index, :create]
    resources :comments, only: [:index, :create]  
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
