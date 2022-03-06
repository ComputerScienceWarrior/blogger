Rails.application.routes.draw do
  resources :users do
    resources :blogs
  end

  root 'static#home'
  get '/about', to: 'static#about'
  get '/contact-us', to: 'static#contact'
end
