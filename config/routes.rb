Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, :path => "/" do
    namespace :v1, :path => "/" do
      resources :users, only: [:create, :destroy]
      resources :courses, only: [:index, :show]
      resources :appointments, only: [:create, :destroy, :edit]
      post '/login', to: "users#login"
    end
  end
end
