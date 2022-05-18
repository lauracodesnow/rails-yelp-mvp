Rails.application.routes.draw do
  resources :restaurants, except: [:destroy, :edit] do
    resources :reviews, only: [:index, :create, :new ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
