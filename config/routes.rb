Rails.application.routes.draw do
  # dDevise routes
  devise_for :users
  # Root path
  root 'welcome#index'
  # Add Resources
  resources :albums
end
