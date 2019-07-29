Rails.application.routes.draw do

  resources :songs, only: [:index, :show, :new, :create, :edit, :update]

  post "songs/upload", to: "songs#upload"

  resources :artists, only: [:show]

end
