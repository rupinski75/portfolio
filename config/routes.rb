Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :picture_tags
  resources :tags
  resources :pictures
  resources :users
  resources :galleries
  resources :articles do
    resources :comments
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'dashboard', to: 'pages#dashboard'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
