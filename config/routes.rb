# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :masonic_lodges do 
        resources :members
      end
    end
  end

  namespace :backoffice do
    delete '/logout', to: '/session#destroy'

    resources :masonic_lodges
    resources :members
  end
  root 'backoffice/dashboard#index'
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#profile"
end
