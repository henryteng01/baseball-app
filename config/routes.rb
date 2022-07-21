Rails.application.routes.draw do
  devise_for :users
  root 'general#index', as: 'general_index'
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
