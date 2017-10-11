require("pry-byebug")
require("pry")
require_relative("models/album.rb")
require_relative("models/artist.rb")

# Artist.delete_all()
# Album.delete_all()

artist_1 = Artist.new({ "name" => "The White Stripes" })
artist_1.save()

artist_2 = Artist.new({ "name" => "Daft Punk"})
artist_2.save()


album_1 = Album.new({
                      "title" => "Elephant",
                      "genre" => "Rock",
                      "artist_id" => artist_1.id
                    })
album_1.save()

album_2 = Album.new({
                      "title" => "White Blood Cells",
                      "genre" => "Rock",
                      "artist_id" => artist_1.id
                    })
album_2.save()

album_3 = Album.new({
                      "title" => "Get Behind Me Satan",
                      "genre" => "Rock",
                      "artist_id" => artist_1.id
                    })
album_3.save()

album_4 = Album.new({
                      "title" => "Random Access Memory",
                      "genre" => "Electronic",
                      "artist_id" => artist_2.id
                    })
album_4.save()

album_5 = Album.new({
                      "title" => "Discovery",
                      "genre" => "Electronic",
                      "artist_id" => artist_2.id
                    })
album_5.save()

album_6 = Album.new({
                      "title" => "Homework",
                      "genre" => "Electronic",
                      "artist_id" => artist_2.id
                    })
album_6.save()


binding.pry
nil
