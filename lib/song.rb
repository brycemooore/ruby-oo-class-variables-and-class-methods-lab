class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        self.class.count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.count=(new_count)
        @@count = new_count
    end

    def self.genre_count
        hash_return = {}
        @@genres.each{|genre|
            if hash_return[genre] != nil
                hash_return[genre] += 1
            else
                hash_return[genre] = 1
            end
        }
        return hash_return
    end 

    def self.artist_count
        hash_return = {}
        @@artists.each{|artist|
            if hash_return[artist] != nil
                hash_return[artist] += 1
            else
                hash_return[artist] = 1
            end
        }
        return hash_return
    end 
    
end