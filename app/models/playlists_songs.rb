class PlaylistsSongsController < ApplicationRecord

    belongs_to :playlist 
    belongs_to :songs
end
