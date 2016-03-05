Rails.application.routes.draw do
  root to: 'pages#home'

  get '/', to: 'pages#home'
  get '/profile', to: 'pages#about_me', as: 'about_me'
  get '/projects', to: 'pages#projects', as: 'projects'
  get '/contact', to: 'pages#contact', as: 'contact'

  #posts
  get '/posts', to: 'posts#new'

  #users
  get '/signup', to: 'users#new', as: 'signup'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  #sessions
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'

end
