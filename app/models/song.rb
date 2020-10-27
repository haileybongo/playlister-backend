class Song < ApplicationRecord
    has_many :playlist_songs
    has_many :playlists, :through => :playlist_songs
    validates :song_name, :song_link, presence: true
end
 