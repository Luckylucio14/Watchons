Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :events, only: %i[index show]
  resources :places, only: %i[show update edit]
  
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
