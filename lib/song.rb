require 'pry'

class Song
    @@count = 0
    @@artists = Array.new
    @@genres = Array.new
    @@genres_hash = {}
    @@artists_hash = {}


    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1

        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.tally.keys
    end

    def self.genres
        @@genres.tally.keys
    end

    def self.artist_count
       @@artists.tally
    end

    def self.genre_count
        @@genres.tally
    end
end
