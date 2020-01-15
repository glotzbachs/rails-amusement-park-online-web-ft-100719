Rails.application.routes.draw do
  get 'attractions/index'
  get 'attractions/show'
  get 'attractions/new'
  get 'attractions/edit'
  root 'welcome#home'
  get 'welcome/home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get 'sessions/destroy'

  resources :users
  resources :attractions
  resources :rides


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
