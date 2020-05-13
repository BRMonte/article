Rails.application.routes.draw do

  get 'texts/index'
  resources :texts, only: [:index]


end
