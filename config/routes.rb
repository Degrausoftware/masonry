Rails.application.routes.draw do
  namespace :backoffice do
    get 'members/index'
    get 'dashbaord', to: 'dashboard#index'
  end
  devise_for :admins
  root "backoffice/dashboard#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
