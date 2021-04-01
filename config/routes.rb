Rails.application.routes.draw do
  get 'home/index'
  resources :bookmarks
  resources :categories
  resources :bookmark_types

  root 'home#index'
end
