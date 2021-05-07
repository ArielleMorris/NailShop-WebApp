Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/welcome')

  get 'welcome', to: 'pages#welcome', as: 'welcome'
  post 'welcome', to: 'pages#welcome'
  get 'customers', to: 'pages#customers', as: 'customers'

  get 'promotions', to: 'promotions#promotions', as: 'promotions'
  get 'promotions/new', to: 'promotions#new', as: 'newpromotion'
  post 'promotions', to: 'promotions#create'
  get 'promotions/:id/edit', to: 'promotions#edit', as: 'editprom'
  patch 'promotions/:id', to: 'promotions#update'
  delete 'promotions/:id', to: 'promotions#destroy'

  get 'appointments', to: 'appointments#new', as: 'appointments'
  post 'appointments', to: 'appointments#create'
  get 'appointments/:id/edit', to: 'appointments#edit', as: 'edit_appointment'
  patch 'appointments/:id', to: 'appointments#update', as: 'appointment'
  post 'appointments/:id/checkin', to: 'appointments#check_in', as: 'appointment_checkin'
  delete 'appointments/:id', to: 'appointments#destroy'
  

  get 'show', to: 'pages#show', as: 'show'
  get 'review', to: 'pages#review', as: 'review'
  post 'create', to: 'pages#create', as: 'create'
  get 'register', to: 'pages#register', as: 'register'

  get 'managerhome', to: 'pages#manage', as: 'managerhome'
  

end
