class SongsController < ApplicationController
    has_many :playlists_songs
    has_many :playlists, :through => :playlists_songs 
end
