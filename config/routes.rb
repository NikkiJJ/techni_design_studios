Rails.application.routes.draw do
  # devise_for :admins
  resources :posts

  # Set the root to the home action of PagesController
  root to: 'pages#home'
end
