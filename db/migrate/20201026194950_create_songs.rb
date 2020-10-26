class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :song_link
      t.string :artist_name
      t.string :artist_link
      t.string :album_name
      t.string :album_link
      t.string :preview_url
      t.string :image
      t.string :spotify_id

      t.timestamps
    end
  end
end
