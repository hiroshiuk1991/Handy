Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

  get "/login", to: "sessions#new", as: "new_session"
  post "/login", to: "sessions#create", as: "sessions"
  delete "/logout", to: "sessions#destroy", as: "logout"
  get "/logout", to: "sessions#destroy"
  
  resources :users
  resources :ingredient 
  resources :recipes

  

  get '/search' => 'recipes#search', :as => 'search_recipe'

end
