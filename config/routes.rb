Rails.application.routes.draw do
  resources :api, only: [:index, :new]
end
