Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, only: [:index, :new, :create]

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
