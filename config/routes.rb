Rails.application.routes.draw do
  root to: 'pages#home'

  get '/', to: 'pages#home'

end
