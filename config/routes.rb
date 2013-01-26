require 'api_constraints'
ParkNGo::Application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1) do
        resources :bookings
        resources :feedbacks
        resources :parking_types
        resources :parkings
        resources :parking_companies
        resources :parking_branches
        resources :cars
    end
  end

  resources :cars


  match '/bookings/current', to: 'bookings#current', :as => "current_bookings"

  # get "parking_companies/new"
  match '/company/add', to: 'parking_companies#new', :as => "add_parking_company"
  # get "parking_branch/new"
  match '/company/branch/add', to: 'parking_branches#new', :as => "add_parking_branch"
   # get "parking_branch/show"
  match '/company/branch/:id', to: 'parking_branches#show', :as => "show_company_branch"
    # get "edit_parking_company" => parking_companies#edit custom route edit_parking_company_path
  match '/company/edit/:id', to: 'parking_companies#edit', :as => "edit_parking_company"
  # get "parking_companies/index" custom route all_companies_path 
  match '/company', to: 'parking_companies#index', :as => "all_companies" 

  match '/company/show' => redirect('/company')
  # match '/parking_companies' => redirect('/company')


  # branch_by_airport_path(:airport)
  match '/airport/:airport', to: 'parking_branches#index', :as => "branch_by_airport" 

  get "parking_companies/destroy"

  get "parking_branches/index"

  get "parking_branches/update"

  get "parking_branches/destroy"


  # get "parking_companies/show" custom route show_company_path

  match '/company/show/:company_name', to: 'parking_companies#show', :as => "show_company"
  # match '/parking_companies/:id' => redirect('/company/show/%{id}')
  # match '/company/show/:id', to: 'parking_companies#show', :as => "show_company_by_id"
  match '/company/branch' => redirect('/company')
  match '/company/:company_name', to: 'parking_companies#index', :as => "company_by_name" 
  
  # get "parking_companies/update"
  # match '/company/update', to: 'parking_companies#update', :as => ""





 
  


  #pass the id to path edit_parking_branch_path(id)
  match '/company/branch/edit/:id', to: 'parking_branches#edit', :as => "edit_parking_branch"
  



  authenticated :user do
    root :to => 'home#index'
    
  end
  root :to => "home#index"

  devise_for :users, :path_names => { :sign_up => "register" }, :path_names => { :sign_in => "login" }
  resources :users do
    resources :addreses
  end

  resources :bookings


  resources :feedbacks


  resources :parking_types


  resources :parkings
  resources :parking_companies
  resources :parking_branches




end