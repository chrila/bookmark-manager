Rails.application.routes.draw do
  resources :bookmarks
  resources :categories
  resources :bookmark_types
  root 'bookmarks#index'
end
