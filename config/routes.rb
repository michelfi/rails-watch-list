Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, except: [:destroy, :update, :edit] do
    resources :bookmarks, only: [:new, :create]
  end

  root "lists#index"
  resources :bookmarks, only: [:destroy]
end
