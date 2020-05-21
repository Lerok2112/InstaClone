Rails.application.routes.draw do
  resources :posts
  #resources :posts, only: [:new, :create]


  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :users do
    member do
      get :following, :followers
    end
  end
  get 'home/index'
  root to: "home#index"
  resources :friendships, only: [:create, :destroy]
end
