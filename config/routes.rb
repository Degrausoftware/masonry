# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :backoffice do
    resources :members do
      get 'show'
      get 'address'
  end
    
  end
  root 'backoffice/dashboard#index'
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#profile"
end
