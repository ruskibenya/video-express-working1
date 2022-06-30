Rails.application.routes.draw do
  get '/', to: 'video#home'
  get '/party', to: 'video#party'


  post '/login', to: 'video#login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
