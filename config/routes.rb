ParkNGo::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :path_names => { :sign_up => "register" }, :path_names => { :sign_in => "login" }
  resources :users
end