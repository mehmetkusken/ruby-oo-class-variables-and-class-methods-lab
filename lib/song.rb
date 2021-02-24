class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        result={}
        @@genres.each {|gen| result[gen]= (result[gen] || 0) + 1}
        result
    end
    def self.artist_count
        artist_hash = {}
        @@artists.each { |element| !artist_hash[element] ? artist_hash[element] = 1 : artist_hash[element] += 1 }
        artist_hash
      end
    end