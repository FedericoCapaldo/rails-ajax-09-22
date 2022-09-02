Rails.application.routes.draw do
  root to: "pages#home"

  get 'xhr-example', to: 'pages#xhr_example'
  get 'fetch-example', to: 'pages#fetch_example'
  get 'fetch-example-modern', to: 'pages#fetch_example_modern'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [ :index, :show ] do
    resources :reviews, only: :create
  end

end
