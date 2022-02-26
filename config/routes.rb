Rails.application.routes.draw do

  root 'static#home'
  get '/about', to: 'static#about'
  get '/contact-us', to: 'static#contact'
end
