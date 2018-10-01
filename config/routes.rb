Rails.application.routes.draw do
  root "static_pages#home"
  get "/home", to: "static_pages#home", as: :home
  get "/help", to: "static_pages#help", as: :help
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :contacts
  resources :posts, only: %i(index show)
  resources :hotels, only: %i(index show)
  namespace :admin do
    resources :hotels
    resources :images, only: :destroy
    resources :categories
  end
end
