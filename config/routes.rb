Rails.application.routes.draw do
  
  root 'home#index'
  devise_for :users

  resources :accomplishments
  resources :solutions
  resources :clues
  resources :tasks
  resources :locations
  resources :players
  resources :games
  
end
