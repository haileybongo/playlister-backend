Rails.application.routes.draw do

  resources :playlist_songs
  namespace :api do 
    resources :songs, :playlists
  end
  
end
