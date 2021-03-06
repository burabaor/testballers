Rails.application.routes.draw do
  devise_for :users, :controllers => {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  get  "/users", to: "top#index"
  resources :point, only: [:new]
  resources :videos, only: [:new, :show, :create]
  resources :trades, only: [:create]
  post 'point/pay' => 'point#pay'
  root 'top#index'

end
