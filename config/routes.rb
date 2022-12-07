Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :events, only: %i[index show] do
    resources :places, only: %i[show]
  end

  resources :places, only: %i[update edit]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
