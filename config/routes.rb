Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookmarks, only: [:create, :update, :destroy, :index]
  resources :users, only: [:create]
  resources :sessions
end
