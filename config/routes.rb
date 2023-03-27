# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :backoffice do
    resources :members do
      # get :profile, on: :collection
    end
    get 'dashbaord', to: 'dashboard#index'
  end
  devise_for :admins
  root 'backoffice/dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#profile"
end
