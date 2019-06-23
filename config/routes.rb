Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs
  resources :artists
  post '/upload', to: 'songs#upload'
  post '/songs/upload', to: 'songs#upload'

  # resources :songs do
  #     post '/upload', to: 'songs#upload'
  # end

end
