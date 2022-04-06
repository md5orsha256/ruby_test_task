Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: [:index, :create, :new]
  root "posts#index"
end
