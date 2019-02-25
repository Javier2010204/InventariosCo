Rails.application.routes.draw do
  resources :inventories
  resources :products
  resources :sub_categories
  resources :categories
  resources :brands
  resources :units
  resources :providers
  resources :stores
  resources :attachments, only:[:show, :new, :create, :destroy]
  devise_for :users

  get '/brands_suggestion', to: 'brands_suggestion#index'
  get '/validate_suggested_brand', to: 'validate_suggested_brand#index'

  authenticated :user do
    root 'home#index'
    resources :rols
    resources :companies
    resources :usuarios, as: :users
  end

  unauthenticated :user do
  	root 'home#unregistered'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
