Rails.application.routes.draw do
  resources :bookmarks
  resources :categories
  resources :bookmark_types

  get 'categories/:id/json', to: 'categories#json', as: 'categories_json'

  root 'bookmarks#index'
end
