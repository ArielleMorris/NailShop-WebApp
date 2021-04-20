Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/welcome')

  get 'welcome', to: 'pages#welcome', as: 'welcome'
  get 'customers', to: 'pages#customers', as: 'customers'
  get 'promotions', to: 'pages#promotions', as: 'promotions'
  get 'bookappt', to: 'pages#bookappt', as: 'bookappt'
  get 'show', to: 'pages#show', as: 'show'
  get 'login', to: 'pages#login', as: 'login'
end
