Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'user/registrations' }
  get "users/show" => "users#show"
  root to: 'items#index'
  resources :items do
  end
  
  resources :users, only: [:show, :edit, :update]

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
