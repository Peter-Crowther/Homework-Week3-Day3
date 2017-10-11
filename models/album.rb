require("pg")

class Album
  attr_accessor :title, :genre
  attr_reader :id, :artists_id

  def initilaize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @genre = options["genre"]
    @artists_id = options["artists_id"].to_i

  end
end
