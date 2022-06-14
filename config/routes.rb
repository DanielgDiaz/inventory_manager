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

  # resources :sessions, except: :show
  # controller :sessions do
  #   get 'login' => :new
  #   post 'login' => :create
  #   delete 'logout' => :destroy
  # end

  get "registro", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  

  resources :sessions do
    member do
      get :eliminar
    end
  end




  get 'home/index'
  get "/", to: "home#index"

end
