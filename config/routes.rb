Rails.application.routes.draw do
  resources :users
  get 'home/index'
  get "/", to: "home#index"
  
  resources :articles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
