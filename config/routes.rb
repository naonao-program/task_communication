Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'lessons#index'
  resources :lessons, only: [:index] do
    resources :tasks, only: [:index, :show], shallow: true
  end
end
