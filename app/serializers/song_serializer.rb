class SongSerializer
    include FastJsonapi::ObjectSerializer
    attributes :song_name, :song_link, :artist_name, :artist_link, :album_name, :album_link, :preview_url, :image, :spotify_id, :playlist_id
end