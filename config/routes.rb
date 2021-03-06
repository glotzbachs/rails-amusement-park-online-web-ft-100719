Rails.application.routes.draw do
  root 'welcome#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'

  resources :users
  resources :attractions
  resources :rides


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
