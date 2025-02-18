Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
resources :posts , only: [:index, :new, :create]
get 'latest', to: 'posts#latest'

resources :contacts, only: [:new, :create] do
  collection do
    post 'confirm'
    post 'back'
    get 'done'
  end
end
end
