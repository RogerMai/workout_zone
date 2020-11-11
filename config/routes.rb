Rails.application.routes.draw do

 
  devise_for :users
  resources :gyms
  get 'workout_zone/about', to: 'workout_zone#about'
  get 'workout_zone/category', to: 'workout_zone#category'
  
  get 'users/new', to: 'users#new'
  get 'users', to: 'users#member'
  get 'users/:user_id', to: 'users#show', as: "user"
  post 'users', to:'users#create'
  get '/users/:user_id/edit', to: 'users#edit', as: 'edit_user'
  patch 'users/:user_id', to: 'users#update'
  delete 'users/:user_id', to: 'users#destroy'
  

 
  
 
  root to: 'workout_zone#index'
end

