Rails.application.routes.draw do
  
  authenticated :user do
    root :to => "games#index", :as => "authenticated_root"
  end

  root 'home#index'
  devise_for :users

  resources :games do
    resources :accomplishments
    resources :solutions
    resources :players
    resources :locations do
      resources :tasks
      resources :clues
    end
  end

  namespace :api do
    namespace :v1 do
      resources :games, only: [:index, :show], controller: "/games" do
        resources :accomplishments
        resources :solutions
        resources :players, only: [:index, :show], controller: "/players"
        resources :locations do
          resources :tasks
          resources :clues
        end
      end
    end
  end
  
end