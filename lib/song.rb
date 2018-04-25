require 'pry'

class Song

  attr_accessor :name, :genre, :artist

  @@count = 0
  @@genre_count = {}
  @@artist_count = {}
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1

    @name = name

    @artist = artist
    @@artists << artist

    if @@artist_count[artist]
      @@artist_count[artist] += 1
    else
      @@artist_count[artist] = 1
    end

    @genre = genre
    @@genres << genre

    if @@genre_count[genre]
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
