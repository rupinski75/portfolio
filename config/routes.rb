Rails.application.routes.draw do
  resources :picture_tags
  resources :tags
  resources :pictures
  resources :comments
  resources :users
  resources :galleries
  resources :articles

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
