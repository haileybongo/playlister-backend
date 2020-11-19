class Api::SongsController < ApplicationController

    def index
        songs = Song.all 
        render json: SongSerializer.new(songs)
    end

    def create
        findSong = Song.find_by(spotify_id: params[:spotify_id])
        playlist = Playlist.all.find(params[:playlist_id])
         if findSong
            findSong.playlists<< (playlist)
         else 
            song = Song.create(song_params)
                if song.save
                    song.playlists << (playlist)
                    playlists = Playlist.all
                    render json: PlaylistSerializer.new(playlists)
                else
                    render json:  "Error saving song"
                end
            end
    end

    def show
        
        song = Song.find(params[:id])
        render json: SongSerializer.new(song)
    end

    def destroy
       
        song = Song.find(params[:id])
        playlist = Playlist.find(params[:playlist_id])
        playlist.songs.delete(song)
        if song.playlists = []
            song.destroy
        end
        playlists = Playlist.all
        render json: PlaylistSerializer.new(playlists)
    end

    private 
    
    def song_params
        params.require(:song).permit(:song_name, :song_link, :artist_name, :artist_link, :album_name, :album_link, :preview_url, :image, :spotify_id, :playlist_id)
    end

    end

 
