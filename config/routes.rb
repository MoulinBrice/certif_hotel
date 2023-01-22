Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :rooms do
    resources :bookings
  end

  resources :hotels do
    resources :rooms, only: [:index, :show]
  end

  resources :rooms, only: [:index, :show]
  resources :bookings, only: [:index, :show, :edit, :create]
end
