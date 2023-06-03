# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :backoffice do
    get 'masonic_lodges/index'
    resources :members do
      get 'account_profile', to: 'members#account_profile'
      get 'son_profile', to: 'members#son_profile'
  end
    
  end
  root 'backoffice/dashboard#index'
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#profile"
end
