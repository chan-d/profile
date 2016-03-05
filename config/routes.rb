Rails.application.routes.draw do
  root to: 'pages#home'

  get '/', to: 'pages#home'
  get '/profile', to: 'pages#about_me', as: 'about_me'
  get '/projects', to: 'pages#projects', as: 'projects'
  get '/contact', to: 'pages#contact', as: 'contact'

end
