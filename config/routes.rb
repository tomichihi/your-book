Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'intros#index'
  resources :intros do
    resources :comments
  end
  resources :profiles do
  end
  resources :genre,  only: [:index] do
  end

end
