Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :users
  get 'home/index'
  root to: "home#index"


end
