require("pry-byebug")
require("pry")
require_relative("models/album.rb")
require_relative("models/artist.rb")

album_1 = Album.new({
                      "title" => "Elephant"
                      "genre" => "Rock"
                      "artists_id" => artists_1.id
                    })

album_2 = Album.new({
                      "title" => "White Blood Cells"
                      "genre" => "Rock"
                      "artists_id" => artists_1.id
                    })
album_3 = Album.new({
                      "title" => "Get Behind Me Satan"
                      "genre" => "Rock"
                      "artists_id" => artists_1.id
                    })
album_4 = Album.new({
                      "title" => "Random Access Memory"
                      "genre" => "Electronic"
                      "artists_id" => artists_2.id
                    })
album_5 = Album.new({
                      "title" => "Discovery"
                      "genre" => "Electronic"
                      "artists_id" => artists_2.id
                    })
album_6 = Album.new({
                      "title" => "Homework"
                      "genre" => "Electronic"
                      "artists_id" => artists_2.id
                    })

artists_1 = Artist.new({ "name" => "The White Stripes" })

artist_2 = Artist.new({ "name" => "Daft Punk"})                               

binding.pry
nil
