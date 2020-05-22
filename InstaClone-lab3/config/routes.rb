Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
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
