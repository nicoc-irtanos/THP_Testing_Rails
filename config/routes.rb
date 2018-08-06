Rails.application.routes.draw do
  root 'static_pages#home'
  get '/club', to: 'static_pages#club'

  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
