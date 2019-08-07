Rails.application.routes.draw do
  resources :blogs
  resources :topics

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'resume', to: 'pages#resume'

  root to: 'pages#home'
end
