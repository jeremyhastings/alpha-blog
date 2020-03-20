Rails.application.routes.draw do
  # Specify root page with controller#action
  root 'pages#home'
  # a get request with /about that directs to pages controller about action
  get 'about', to: 'pages#about'
end
