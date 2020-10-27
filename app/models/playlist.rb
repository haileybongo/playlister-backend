class Playlist < ApplicationRecord
    has_many :playlist_songs
    has_many :songs, :through => :playlist_songs
    validates :name, presence: true

end
