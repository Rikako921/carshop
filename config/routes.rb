Rails.application.routes.draw do
  root to: "posts#index"
resources :posts , only: [:index]
get 'latest', to: 'posts#latest'

resources :contacts, only: [:new, :create] do
  collection do
    post 'confirm'
    post 'back'
    get 'done'
  end
end
end
