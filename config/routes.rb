Rails.application.routes.draw do
  resources :companies, only: [:index, :create]
end
