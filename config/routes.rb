Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "users/sessions"}

  root to: 'items#index'
  resources :items do
    collection do
      get 'category'
    end
  end

  resources :users, only: [:show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end

end
