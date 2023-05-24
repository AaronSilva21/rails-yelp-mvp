Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/edit'
  # get 'restaurants/create'
  # get 'restaurants/update'
  # get 'restaurants/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  root to: 'application#home'
end
