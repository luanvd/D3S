Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /en|fr/ do
    root "home_pages#index"
    resources :customers

    namespace :admin do
      root :to => "users#index"
      resources :users
      resources :slider_images, only: :update
      resources :engagements
      resources :producers, except: :show
      resources :products, except: :show
      resources :customers, only: [:index, :show, :destroy]

      resource :slider_shows, only: [:show, :edit, :update]
      resource :d3s_informations, only: [:show, :edit, :update]
      resource :origines, only: [:show, :edit, :update]
      resource :popups, only: [:show, :edit, :update]
      resource :facilities, only: [:show, :edit, :update]
    end
  end
end
