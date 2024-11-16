Rails.application.routes.draw do
  get 'admin_dashboard/index'
  resources :posts
  devise_for :admins
  resources :posts
  get 'admin_dashboard', to: 'admin_dashboard#index'
  root to: 'pages#home'
  get 'services', to: 'pages#services'
end
