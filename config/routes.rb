Rails.application.routes.draw do
  devise_for :users
  root to: "cloths#index"
  resources :cloths do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
