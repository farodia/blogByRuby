Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'articles/index'

  # Declare a standard REST resource, automatically generate CRUD path
  resources :articles do
    resources :comments
    end
  # Defines the root path route ("/")
end
