Rails.application.routes.draw do
  devise_for :users
  resources :blogs
  resources :topics

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'resume', to: 'pages#resume'
  get "/:wedding" => "wedding#show"

  root to: 'pages#home'
end
