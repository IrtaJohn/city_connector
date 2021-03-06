Rails.application.routes.draw do
  root 'static_pages#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :companies do

      end
      resources :users
      resources :resources
    end
  end

    resources :companies, only: [:new, :create, :show]
    resources :resources, only: [:new, :create, :show]
    # resources :resources, only: [:new, :create]
    resources :users
end
