# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.

class MusicTracks
    def initialize 
        @music_tracks = []
    end 

    def add(track)
        fail "Track already added!" if @music_tracks.any?(track)
        @music_tracks << track
    end

    def view_list 
        fail "No tracks added!" if @music_tracks == []
        return @music_tracks
    end
end 

# #1 
# music_track = MusicTracks.new
# music_track.add("Bohemian Rhapsody") 
# music_track.view_list # => ["Bohemian Rhapsody"]

#2
# music_track = MusicTracks.new
# music_track.add("Bohemian Rhapsody") 
# music_track.add("We are the Champions") 
# music_track.view_list # => ["Bohemian Rhapsody", "We are the Champions"]

# #3
# music_track = MusicTracks.new
# music_track.add("Bohemian Rhapsody") # => ["Bohemian Rhapsody"]

# #4 
# music_track = MusicTracks.new
# music_track.add("Bo3emian Rhapsody") 
# music_track.view_list # => ["Bo3emian Rhapsody"]

# #5
# music_track = MusicTracks.new
# music_track.add("Bohemian Rhapsody") 
# music_track.add("Bohemian Rhapsody") # => raises error "track already added!"

# #6 
# music_track = MusicTracks.new
# music_track.view_list # => raises error "no tracks added!"




