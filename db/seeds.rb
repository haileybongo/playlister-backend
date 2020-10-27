# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


newPlaylist= Playlist.create(name: "test playlist", description: "test description")
newSong = Song.create(song_name: " new song", song_link: "test link", artist_name: "beyonce", artist_link: "test artist link", album_name: "test album", album_link: "test album link", preview_url: "test preview", image: "Test image", spotify_id: "test spotify ID")