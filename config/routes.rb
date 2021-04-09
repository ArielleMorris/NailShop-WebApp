Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/welcome')

  get 'welcome', to: 'pages#welcome', as: 'welcome'
end
