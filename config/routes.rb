Rails.application.routes.draw do
  devise_for :users
  resources :cars
  resources :ratings, only: :create  
  post :send_mails, to: 'send_emails#send_email', as: 'send_mails'
end
