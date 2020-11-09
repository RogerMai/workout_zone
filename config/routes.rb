Rails.application.routes.draw do

  
  get 'users/new', to: 'users#new'
  post 'users', to:'users#create', as: 'users'
  
  get 'workout_zone/about', to: 'workout_zone#about'
  get 'workout_zone/category', to: 'workout_zone#category'
  
 
  root to: 'workout_zone#index'
end

