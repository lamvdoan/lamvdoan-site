Rails.application.routes.draw do
  resources :blogs
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'resume', to: 'pages#resume'
  get 'blogs', to: 'blogs#index'

  root to: 'pages#home'
end
