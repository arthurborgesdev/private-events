Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions
  post '/reset', to: 'sessions#reset', as: 'reset' 
end
