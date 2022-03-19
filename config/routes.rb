Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users

  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete '/logout', to: 'session#destroy', as: :logmeout
end
