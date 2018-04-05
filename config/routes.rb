# == Route Map
#
#     Prefix Verb   URI Pattern                Controller#Action
#       root GET    /                          pages#home
#      users GET    /users(.:format)           users#index
#            POST   /users(.:format)           users#create
#   new_user GET    /users/new(.:format)       users#new
#  edit_user GET    /users/:id/edit(.:format)  users#edit
#       user GET    /users/:id(.:format)       users#show
#            PATCH  /users/:id(.:format)       users#update
#            PUT    /users/:id(.:format)       users#update
#            DELETE /users/:id(.:format)       users#destroy
#     hotels GET    /hotels(.:format)          hotels#index
#            POST   /hotels(.:format)          hotels#create
#  new_hotel GET    /hotels/new(.:format)      hotels#new
# edit_hotel GET    /hotels/:id/edit(.:format) hotels#edit
#      hotel GET    /hotels/:id(.:format)      hotels#show
#            PATCH  /hotels/:id(.:format)      hotels#update
#            PUT    /hotels/:id(.:format)      hotels#update
#            DELETE /hotels/:id(.:format)      hotels#destroy
#      login GET    /login(.:format)           session#new
#            POST   /login(.:format)           session#create
#            DELETE /login(.:format)           session#destroy
#

Rails.application.routes.draw do


  get 'reviews/create'

  root :to => 'pages#home'
  resources :users #, :only => [:new, :create]
  resources :hotels
  resources :bookings
  resources :reviews, :only => [:create, :edit, :update]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


end
