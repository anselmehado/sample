Rails.application.routes.draw do
  #get 'blogs/index'

  #get '/blogs', to: 'blogs#index'
  resources :blogs

end
