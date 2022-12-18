Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get 'pages/show'

  resource :car
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
