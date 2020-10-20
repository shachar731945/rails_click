Rails.application.routes.draw do
  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cache/get', to: 'cache#get'
  get '/cache/set', to: 'cache#set'
end
