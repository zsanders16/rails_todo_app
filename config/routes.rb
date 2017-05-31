Rails.application.routes.draw do
  root 'descriptions#welcome'

  resources :descriptions
end
