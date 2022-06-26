Rails.application.routes.draw do
  get '/', to: 'video#home'
  get '/party', to: 'video#party'
  get '/screenshare', to: 'video#screenshare'

  post '/login', to: 'video#login'
  post '/chat/send', to: 'video#chat'
  post '/event', to: 'video#webhook'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
