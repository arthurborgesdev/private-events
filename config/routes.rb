Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions
  resources :events
  post '/reset', to: 'sessions#reset', as: 'reset' 
  get '/upcoming', to: 'events#upcoming', as: 'upcoming'
  get '/past', to: 'events#past', as: 'past'
  post '/attend/:id', to: 'events#attend', as: 'attend'
  root to: "events#index"
end
