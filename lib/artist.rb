class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end
    

    def add_song(song)
        self.songs << song
        song.artist = self    
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.songs << song
        song.artist = self
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def self.song_count
        Song.all.count
    end

end