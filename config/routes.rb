Rails.application.routes.draw do


  root :to => 'pages#home'
  resources :users, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/hotels' => 'hotels#new'
  get '/show' => 'hotels#show'
end
