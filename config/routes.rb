Rails.application.routes.draw do
  root to: 'lessons#index'
  resources :lessons, only: [:index] do
    resources :tasks, only: [:index, :show], shallow: true
  end
end
