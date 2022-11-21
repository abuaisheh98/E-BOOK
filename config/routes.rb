Rails.application.routes.draw do
  resources :ebooks
  root to: 'ebooks#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
