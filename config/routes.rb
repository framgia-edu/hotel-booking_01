Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  root "static_pages#home"
  get "/home", to: "static_pages#home", as: :home
  get "/about", to: "static_pages#about", as: :about
  get "/help", to: "static_pages#help", as: :help
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :contacts
  resources :hotels, only: %i(index show)
  namespace :admin do
    resources :hotels
    resources :images, only: :destroy
    resources :posts, only: %i(index new create)
    resources :categories do
      resources :posts, shallow: true, except: :show
    end
  end
end
