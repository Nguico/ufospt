Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :spots
  root 'spots#index'
  get 'last', :to => 'spots#last'
  get 'map', :to => 'spots#map'
end
