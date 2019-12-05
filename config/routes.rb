Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :new, :create]
  resources :ingredient 
  resources :recipes, only: [:new, :show, :new, :create]

  get '/search' => 'recipes#search', :as => 'search_recipe'

end
