Rails.application.routes.draw do
  
  authenticated :user do
    root :to => "games#index", :as => "authenticated_root"
  end

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
