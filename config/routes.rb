Rails.application.routes.draw do
  devise_for :users, :controllers => {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :users, only: [:index]
  resources :point, only: [:new]
  post 'point/pay' => 'point#pay'
  root 'top#index'

end
