Rails.application.routes.draw do
  resources :locations
  resources :categories, except: :show
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'home/index'
  get "/", to: "home#index"
  

  resources :users
  
  resources :articles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
