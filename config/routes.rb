Rails.application.routes.draw do
  devise_for :users
  root to: 'lessons#index'
  resources :lessons, only: [:index] do
    resources :tasks, only: [:index, :show], shallow: true
  end
end
