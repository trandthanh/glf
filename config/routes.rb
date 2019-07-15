Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # Static pages routes
  get '/a-propos', to: 'pages#apropos'
  get '/contact', to: 'pages#contact'
  get '/recrutement', to: 'pages#recrutement', mail: 'diane.jroussillon@gmail.com'
  get '/syndic', to: 'pages#syndic'

  # Static pages for services
  get 'services/gestion-locative', to: 'services#gestionlocative', mail: 'diane.jroussillon@gmail.com'
  get 'services/devenir-locataire', to: 'services#devenirlocataire', mail: 'diane.jroussillon@gmail.com'
  get 'services/vendre', to: 'services#vendre'
  get 'services/acheter', to: 'services#acheter'

  # contact form
  resources :messages, only: [:create]

  # formulaire correct emails
  # get '/contact', to: 'pages#contact', mail: 'courriers@glf.eu'
  # get '/recrutement', to: 'pages#recrutement', mail: 'candidature@glf.eu'
  # get 'services/gestion-locative', to: 'services#gestionlocative', mail: 'gestion@glf.eu'
  # get 'services/devenir-locataire', to: 'services#devenirlocataire', mail: 'locations@glf.eu'
  # get 'services/vendre', to: 'services#vendre', mail: 'transactions@glf.eu'
  # get 'services/acheter', to: 'services#acheter', mail: 'transactions@glf.eu'

end






