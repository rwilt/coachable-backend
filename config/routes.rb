Rails.application.routes.draw do
  resources :game_joins
  resources :interviews
  resources :key_phrases 
  resources :questions
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
