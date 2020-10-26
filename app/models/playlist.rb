class Playlist < ApplicationRecord
    has_many :playlists_songs
    has_many :songs, :through => :playlists_songs
    validates :name, presence: true
end
