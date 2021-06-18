Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/accueil', to: 'pages#home'
  get '/rejoignez', to: 'pages#home'

  # Static pages routes
  get '/a-propos', to: 'pages#apropos'
  get '/syndic', to: 'pages#syndic'

  # Static pages for services
  # get '/contact', to: 'pages#contact', mail: 'diane.jroussillon@gmail.com', titre: "Nous transmettre un message"
  # get '/recrutement', to: 'pages#recrutement', mail: 'diane.jroussillon@gmail.com'
  # get 'services/gestion-locative', to: 'services#gestionlocative', mail: 'diane.jroussillon@gmail.com', titre: "Proposer un bien à la gestion locative"
  # get 'services/devenir-locataire', to: 'services#devenirlocataire', mail: 'diane.jroussillon@gmail.com', titre: "Vous cherchez un bien à la location"
  # get 'services/vendre', to: 'services#vendre', mail: 'diane.jroussillon@gmail.com', titre: "Proposer un bien à la vente"
  # get 'services/acheter', to: 'services#acheter', mail: 'diane.jroussillon@gmail.com', titre: "Vous cherchez à investir"

  # contact form
  resources :messages, only: [:new, :create]

  # formulaire correct emails
  get '/contact', to: 'pages#contact', mail: 'courriers@glf.eu', titre: "Nous transmettre un message"
  # 1
  get '/recrutement', to: 'pages#recrutement', mail: 'candidature@glf.eu'

  get '/documents_legaux', to: 'pages#documents_legaux', mail: 'courriers@glf.eu'
  # 2
  get 'services/gestion-locative', to: 'services#gestionlocative', mail: 'gestion@glf.eu', titre: "Proposer un bien à la gestion locative"
  # 3
  get 'services/devenir-locataire', to: 'services#devenirlocataire', mail: 'locations@glf.eu', titre: "Vous cherchez un bien à la location"
  # 4
  get 'services/vendre', to: 'services#vendre', mail: 'transactions@glf.eu', titre: "Proposer un bien à la vente"
  # 5
  get 'services/acheter', to: 'services#acheter', mail: 'transactions@glf.eu', titre: "Vous cherchez à investir"
  # 6

  # get 'ftp/new', to: 'ftp#new'
  # post 'ftp/upload', to: 'ftp#upload'

end




