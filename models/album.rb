require("pg")
require_relative("../db/sql_runner.rb")
require_relative("artist.rb")
class Album
  attr_accessor :title, :genre, :artist_id
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @genre = options["genre"]
    @artist_id = options["artist_id"].to_i
  end

  def save()
    sql = "INSERT INTO albums( title, genre, artist_id )
    VALUES ( $1, $2, $3 )
    RETURNING *
    "
    values = [@title, @genre, @artist_id]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i()
  end

  def self.all()
    sql = "SELECT * FROM albums"
    values = []
        result = SqlRunner.run(sql, values)
        albums = result.map { |albums| Album.new(albums)}
        return  albums
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    values = []
    SqlRunner.run(sql, values)
  end


end
