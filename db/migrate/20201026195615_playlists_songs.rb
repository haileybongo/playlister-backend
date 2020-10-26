class PlaylistsSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists_songs, id: false do |t|
      t.belongs_to :playlist
      t.belongs_to :song
    end
  end
end
