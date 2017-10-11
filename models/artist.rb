require("pg")
require_relative("../db/sql_runner.rb")
require_relative("album.rb")

class Artist
attr_accessor :id, :name

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
  end

  def save()
    sql = "INSERT INTO artists( name )
    VALUES ( $1 )
    RETURNING *
    "
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i()
  end

  def self.all()
    sql = "SELECT * FROM artists"
    values = []
        result = SqlRunner.run(sql, values)
        artists = result.map { |artist| Artist.new(artist)}
        return  artists
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    values = []
    SqlRunner.run(sql, values)
  end

  def album_collection()
      sql = "SELECT * FROM albums WHERE artist_id = $1"
      values = [@id]
      results = SqlRunner.run(sql, values)
      albums = results.map { |album| Album.new(album)}
    return albums
    end



end
