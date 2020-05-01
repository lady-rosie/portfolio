Rails.application.routes.draw do
  root to: 'pages#home'
  get '/', to: 'messages#new'
  post '/', to: 'messages#create'
end
