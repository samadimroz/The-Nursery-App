Rails.application.routes.draw do
  get 'gallery/index'
  post 'gallery/search'
  get 'gallery/checkout'
  post 'gallery/checkout'
  get 'gallery/purchase'

  resources :line_items
  resources :carts
  resources :stores
  
  root 'home#index'
  devise_for :users
  get 'home/index'
  get 'home/about'
  get 'home/teams'
  get 'home/testimonial'

  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
