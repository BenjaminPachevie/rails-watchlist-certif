Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[create]
  end
  resources :bookmarks, only: %i[destroy]
  resources :reviews, only: %i[destroy]
end
