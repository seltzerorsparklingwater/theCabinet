Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :update, :create, :destroy] do
    resources :routines, only: [:index, :create]
  end

  resources :routines, only: [:index, :show, :create, :update, :destroy]

end
