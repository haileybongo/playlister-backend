class Api::PlaylistsController < ApplicationController

    def index
        playlists = Playlist.all 
        render json: PlaylistSerializer.new(playlists)
    end

    def create
        playlist = Playlist.create(playlist_params)
        playlists = Playlist.all 
        if playlist.save
            render json: PlaylistSerializer.new(playlists)
        else
            render json: "Error saving playlist"
    end
end

    def show
        playlist = Playlist.find(params[:id])
        render json: PlaylistSerializer.new(playlist)
    end

    def update
    end


    def destroy
        playlist = Playlist.find(params[:id])
        playlist.songs.each{ |song| song.playlists.delete(playlist)}
        playlist.destroy
        render json: "Successfully Deleted"
    end


    private 
    
    def playlist_params
        params.require(:playlist).permit(:name, :description)
    end

    end
