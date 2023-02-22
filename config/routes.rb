Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
  }

  root to: 'items#index'
  resources :items do
  end
  
  resources :users, only: [:show, :edit, :update, :destroy]

  get "items/foundation"
  get "items/concealer"
  get "items/powder"
  get "items/eyebrow"
  get "items/eyeliner"
  get "items/eyeshadow"
  get "items/mascara"
  get "items/lip"
  get "items/cheek"

end
