Rails.application.routes.draw do


  root :to => 'pages#home'
  resources :users #, :only => [:new, :create]
  resources :hotels

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/hotels' => 'hotels#new'
  post '/hotels' => 'hotels#create'
  get '/hotels/:id/edit' => 'hotels#edit', :as => 'planets_edit'
  get '/hotels/:id/show' => 'hotels#show'
end
