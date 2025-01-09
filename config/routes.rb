Rails.application.routes.draw do
  resources :products

  resource :session
  resources :passwords, param: :token
  resources :products do
    resources :subscribers, only: [ :create ]
  end
<<<<<<< HEAD
=======

>>>>>>> f12c778 (help)

  get "up" => "rails/health#show", as: :rails_health_check

  get "/products", to: "products#index"
  get "/products/new", to: "products#new"
  post "/products", to: "products#create"
  get "/products/:id", to: "products#show"
  get "/products/:id/edit", to: "products#edit"
  patch "/products/:id", to: "products#update"
  put "/products/:id", to: "products#update"
  delete "/products/:id", to: "products#destroy"

  # Add login and logout routes
  get 'login', to: 'sessions#new', as: :login    # This will map to the sessions controller's new action
  post 'login', to: 'sessions#create'              # This will handle the login form submission
  delete 'logout', to: 'sessions#destroy', as: :logout  # This will log the user out

  root "products#index"
end
