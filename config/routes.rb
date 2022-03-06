Rails.application.routes.draw do
  resources :users do
    resources :blogs
  end

  get '/logout', to: "sessions#destroy"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  root 'static#home'
  get '/about', to: 'static#about'
  get '/contact-us', to: 'static#contact'
end
