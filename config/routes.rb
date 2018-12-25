Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home_pages#index"

  namespace :admin do 
  	root "users#index"
  	resource :users
  end
end
