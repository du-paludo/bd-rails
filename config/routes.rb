Rails.application.routes.draw do
    resources :produtos
    resources :pedidos
    resources :enderecos
    resources :clientes
  # root to: "home#index"
    devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    root "home#index"
    # root "devise/sessions#new"
    #root :to => "devise/sessions#new"

    # get '/users', to: 'users#index'
end
