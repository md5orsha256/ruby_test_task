Rails.application.routes.draw do
  resources :posts, only: [:index, :create, :new]
  root "posts#index"
end
