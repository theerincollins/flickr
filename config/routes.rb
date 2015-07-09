Rails.application.routes.draw do
  devise_for :admins
  root 'home#index'
  devise_for :users

  resources :users do
    resources :images
  end


end
