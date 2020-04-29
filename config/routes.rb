Rails.application.routes.draw do
  root to: 'pages#home'
  get '/contact', to: 'messages#new'
  post '/contact', to: 'messages#create'
end
