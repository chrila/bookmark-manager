Rails.application.routes.draw do
  resources :bookmarks
  resources :categories
  resources :bookmark_types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
