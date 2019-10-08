Rails.application.routes.draw do
  resources :consumptions
  resources :batches
  root 'start#index'
  get 'start/index'
  resources :animal_groups
end
