Rails.application.routes.draw do
  devise_for :users
  root to: "cloths#index"
  resources :cloths 
  resources :users, only: :show
end
