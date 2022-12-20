Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get 'pages/show'

  resources :cars, only: %i[index new create]
  post 'cars/new' => 'cars#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
