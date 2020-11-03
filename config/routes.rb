Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, path: '/' do
    namespace :v1, path: '/' do
      resources :users, only: %i[create destroy]
      resources :courses, only: %i[index show]
      resources :appointments, only: %i[create destroy]
      post '/login', to: 'users#login'
      get '/my', to: 'courses#user_courses'
    end
  end
end
