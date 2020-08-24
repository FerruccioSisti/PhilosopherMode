Rails.application.routes.draw do
  resources :teams
  devise_for :users
  root 'pages#about'
  get 'team', to: 'create_teams#index'
  get 'teams', to: 'teams#index'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
