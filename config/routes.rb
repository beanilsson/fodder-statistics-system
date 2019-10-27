Rails.application.routes.draw do
  get 'statistics/index'
  get 'statistic/index'
  resources :consumptions
  resources :batches
  root 'start#index'
  get 'start/index'
  resources :animal_groups
end
