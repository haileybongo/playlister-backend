Rails.application.routes.draw do

  namespace :api do 
    resources :songs, :playlists
  
end
