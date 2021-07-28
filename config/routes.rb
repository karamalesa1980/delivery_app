Rails.application.routes.draw do
  resources :couriers do
    resource :packages
  end
  root to: 'couriers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
