Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'resume', to: 'pages#resume'

  root to: 'pages#home'
end
