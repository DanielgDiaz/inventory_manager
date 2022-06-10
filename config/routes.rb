Rails.application.routes.draw do
  resources :locations do
    member do
      get :eliminar
    end
  end

  resources :categories, except: :show do
    member do
      get :eliminar
    end
  end
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'home/index'
  get "/", to: "home#index"
  

  resources :users do
    member do
      get :eliminar
    end
  end
  
  resources :articles do
    member do
      get :eliminar
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
