Rails.application.routes.draw do
  post '/songs/upload', to: 'songs#upload'
  resources :songs
  resources :artist
end
