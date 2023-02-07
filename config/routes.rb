Rails.application.routes.draw do
  namespace :backoffice do
    get 'dashboard/index'
  end
  devise_for :admins
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
