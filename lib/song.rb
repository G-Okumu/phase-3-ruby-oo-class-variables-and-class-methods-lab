class Song
    attr_accessor :name, :artist, :genre  #instance variables

    #class variable
    @@count = 0
    @@genres = []
    @@artists = []


    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        # whenever a new instance of song is created the class variable increases by 1
        @@count += 1 
        @@genres << genre
        @@artists.push(artist)
    end

    #returns total count, this is also a class method
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    # returns a hash in which the keys are the names of each genre
    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end