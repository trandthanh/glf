Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # Static pages routes
  get '/a-propos', to: 'pages#apropos'
  get '/contact', to: 'pages#contact'
  get '/recrutement', to: 'pages#recrutement'
  get '/syndic', to: 'pages#syndic'

  # Static pages for services
  get 'services/gestion-locative', to: 'services#gestionlocative'
  get 'services/devenir-locataire', to: 'services#devenirlocataire'
  get 'services/vendre', to: 'services#vendre'
  get 'services/acheter', to: 'services#acheter'
end






