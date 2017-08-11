Rails.application.routes.draw do
  #resources :upvotes
  resources :alarms 
  
  # do
    # member do
  post 'upvote', to: "alarms#upvote"
    # end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "alarms#index"
  
end
