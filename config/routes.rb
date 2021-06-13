Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'intros#index'
  resources :intros do
    resources :comments, only: [:create, :show]
    resources :likes, only: [:create, :destroy]
  end
  resources :profiles do
  end
  resources :genres,  only: [:index] do
  end
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :messages, only: [:index, :create, :show]
  end
  resources :payments , only: [:new, :create] do
  end
end
