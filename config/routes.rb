Rails.application.routes.draw do
  resources :lists, only: [:new, :create, :index, :show] do
    resources :bookmarks, only: [:new, :create, :index, :show, :destroy ]
  end
  resources :bookmarks, only: [:destroy ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
