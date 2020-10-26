class Song < ApplicationRecord
    has_and_belongs_to_many :playlists
    validates :song_name, :song_link, presence: true
end
 