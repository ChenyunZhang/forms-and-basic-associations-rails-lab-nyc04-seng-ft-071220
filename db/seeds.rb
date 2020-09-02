# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ID3 tag music genres are surprisingly specific.
Genre.destroy_all
Genre.reset_pk_sequence
Song.destroy_all
Song.reset_pk_sequence
Note.destroy_all
Note.reset_pk_sequence
Artist.destroy_all
Artist.reset_pk_sequence

genres = Hash[[
  "Blues",
  "Classic Rock",
  "Country",
  "Dance",
  "Disco",
  "Funk",
  "Grunge",
  "Hip-Hop",
  "Jazz",
  "Metal",
  "New Age",
  "Oldies",
  "Other",
  "Pop",
  "R&B",
  "Rap",
  "Reggae",
  "Rock",
  "Techno",
  "Industrial",
  "Alternative",
  "Ska",
  "Death Metal",
  "Pranks",
  "Soundtrack",
  "Euro-Techno",
  "Ambient",
  "Trip-Hop",
  "Vocal",
  "Jazz+Funk",
  "Fusion",
  "Trance",
  "Classical",
  "Instrumental",
  "Acid",
  "House",
  "Game",
  "Sound Clip",
  "Gospel",
  "Noise",
  "Alternative Rock",
  "Bass",
  "Soul",
  "Punk",
  "Space",
  "Meditative",
  "Instrumental Pop",
  "Instrumental Rock",
  "Ethnic",
  "Gothic",
  "Darkwave",
  "Techno-Industrial",
  "Electronic",
  "Pop-Folk",
  "Eurodance",
  "Dream",
  "Southern Rock",
  "Comedy",
  "Cult",
  "Gangsta",
  "Top 40",
  "Christian Rap",
  "Pop/Funk",
  "Jungle",
  "Native US",
  "Cabaret",
  "New Wave",
  "Psychadelic",
  "Rave",
  "Showtunes",
  "Trailer",
  "Lo-Fi",
  "Tribal",
  "Acid Punk",
  "Acid Jazz",
  "Polka",
  "Retro",
  "Musical",
  "Rock & Roll",
  "Hard Rock",
  "Folk",
  "Folk-Rock",
  "National Folk",
  "Swing",
  "Fast Fusion",
  "Bebob",
  "Latin",
  "Revival",
  "Celtic",
  "Bluegrass",
  "Avantgarde",
  "Gothic Rock",
  "Progressive Rock",
  "Psychedelic Rock",
  "Symphonic Rock",
  "Slow Rock",
  "Big Band",
  "Chorus",
  "Easy Listening",
  "Acoustic",
  "Humour",
  "Speech",
  "Chanson",
  "Opera",
  "Chamber Music",
  "Sonata",
  "Symphony",
  "Booty Bass",
  "Primus",
  "Porn Groove",
  "Satire",
  "Slow Jam",
  "Club",
  "Tango",
  "Samba",
  "Folklore",
  "Ballad",
  "Power Ballad",
  "Rhythmic Soul",
  "Freestyle",
  "Duet",
  "Punk Rock",
  "Drum Solo",
  "Acapella",
  "Euro-House",
  "Dance Hall",
  "Goa",
  "Drum & Bass",
  "Club - House",
  "Hardcore",
  "Terror",
  "Indie",
  "BritPop",
  "Negerpunk",
  "Polsk Punk",
  "Beat",
  "Christian Gangsta Rap",
  "Heavy Metal",
  "Black Metal",
  "Crossover",
  "Contemporary Christian",
  "Christian Rock",
  "Merengue",
  "Salsa",
  "Thrash Metal",
  "Anime",
  "JPop",
  "Synthpop"
].map { |genre| [genre, Genre.find_or_create_by(name: genre)] }]

# artist --< song >-- genre
#             |
#             |
#             ^
#            note

artist_1 = Artist.create(name: Faker::Name.name)
artist_2 = Artist.create(name: Faker::Name.name)
artist_3 = Artist.create(name: Faker::Name.name)
artist_4 = Artist.create(name: Faker::Name.name)
artist_5 = Artist.create(name: Faker::Name.name)
artist_6 = Artist.create(name: Faker::Name.name)

song_1 = Song.create(title: Faker::Restaurant.name, artist:artist_2, genre: Genre.all[0])
song_2 = Song.create(title: Faker::Restaurant.name, artist:artist_1, genre: Genre.all[2])
song_3 = Song.create(title: Faker::Restaurant.name, artist:artist_2, genre: Genre.all[2])
song_4 = Song.create(title: Faker::Restaurant.name, artist:artist_3, genre: Genre.all[3])
song_5 = Song.create(title: Faker::Restaurant.name, artist:artist_1, genre: Genre.all[4])
song_6 = Song.create(title: Faker::Restaurant.name, artist:artist_2, genre: Genre.all[0])
song_7 = Song.create(title: Faker::Restaurant.name, artist:artist_4, genre: Genre.all[6])
song_8 = Song.create(title: Faker::Restaurant.name, artist:artist_5, genre: Genre.all[0])
song_9 = Song.create(title: Faker::Restaurant.name, artist:artist_6, genre: Genre.all[2])

note_1 = Note.create(content:Faker::Quote.famous_last_words, song:song_1)
note_2 = Note.create(content:Faker::Quote.famous_last_words, song:song_2)
note_3 = Note.create(content:Faker::Quote.famous_last_words, song:song_3)
note_4 = Note.create(content:Faker::Quote.famous_last_words, song:song_4)
note_5 = Note.create(content:Faker::Quote.famous_last_words, song:song_1)
note_6 = Note.create(content:Faker::Quote.famous_last_words, song:song_2)
note_7 = Note.create(content:Faker::Quote.famous_last_words, song:song_1)



puts "😘"