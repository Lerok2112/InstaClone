Rails.application.routes.draw do
  resources :posts
  #resources :posts, only: [:new, :create]


  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :users
  get 'home/index'
  root to: "home#index"


end
