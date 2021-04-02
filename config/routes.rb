Rails.application.routes.draw do
  resources :inspirations
  resources :bests
  resources :sessions do 
    resources :workouts
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
