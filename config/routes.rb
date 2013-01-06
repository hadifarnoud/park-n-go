ParkNGo::Application.routes.draw do
  get "parking_company/index"

  get "parking_company/show"

  get "parking_company/new"
  
  get "parking_company/update"

  get "parking_company/destroy"

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
  resources :parking_companies
end