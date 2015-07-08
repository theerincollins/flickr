Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  resources :users do
    resources :images
  end


end
