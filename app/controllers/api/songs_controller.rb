class Api::SongsController < ApplicationController
    def index
        songs = Song.all 
        render json: SongSerializer.new(songs)
    end

    def create
        findSong = Song.all.findBy(spotifyId: params[:spotifyId])
        playlist = Playlist.all.find(params[:playlist_id])
         if findSong
            findSong.playlists<< (playlist)
         else 
            song = song.create(song_params)
                if song.save
                    render json: SongSerializer.new(song)
                    song.playlists << (playlist)
                else
                    render json: (error: song.save.full_error_messages)
                end
            end
    end

    private 
    
    def song_params
        params.require(:song).permit(:song_name, :song_link, :artist_name, :artist_link, :album_name, :album_link, :preview_url, :image, :spotify_id, :playlist_id)
    end

    end


