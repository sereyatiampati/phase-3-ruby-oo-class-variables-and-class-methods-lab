require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists=[]
    @@genres=[]
    @@artist_count=Hash.new
    @@genre_count=Hash.new
    def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count        
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end
end
binding.pry