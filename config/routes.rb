ParkNGo::Application.routes.draw do

  resources :parking_companies
  resources :parking_branches
  
  # get "parking_companies/index"
  match '/company', to: 'parking_companies#index'

  # get "parking_companies/show"
  match '/company/show', to: 'parking_companies#show'

  # get "parking_companies/new"
  match '/company/add', to: 'parking_companies#new'
  
  # get "parking_companies/update"
  match '/company/update', to: 'parking_companies#update'

  get "parking_companies/destroy"

  get "parking_branch/index"

  get "parking_branch/show"
  
  get "parking_branch/new"
  
  get "parking_branch/update"

  get "parking_branch/destroy"


  authenticated :user do
    root :to => 'home#index'
    
  end
  root :to => "home#index"

  devise_for :users, :path_names => { :sign_up => "register" }, :path_names => { :sign_in => "login" }
  resources :users

end