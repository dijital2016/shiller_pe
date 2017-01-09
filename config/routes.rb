Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'data#index'
  get '/charts', to: 'charts#index'

  namespace :api do
    namespace :v1 do
      resources :data, only: [:index]
    end
  end
end
