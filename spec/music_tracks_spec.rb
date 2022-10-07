require 'music_tracks'

RSpec.describe MusicTracks do 
    context "when a track is added" do 
        it "adds that value to the list" do
            music_track = MusicTracks.new
            results = music_track.add("Bohemian Rhapsody")
            expect(results).to eq ["Bohemian Rhapsody"]
        end
    end

    context "when a track is added and viewed" do 
        it "returns that list" do
            music_track = MusicTracks.new
            music_track.add("Bohemian Rhapsody")
            results = music_track.view_list
            expect(results).to eq ["Bohemian Rhapsody"]
        end
    end

    context "when multiple tracks are added and viewed" do 
        it "returns that list" do
            music_track = MusicTracks.new
            music_track.add("Bohemian Rhapsody")
            music_track.add("We are the Champions")
            results = music_track.view_list
            expect(results).to eq ["Bohemian Rhapsody", "We are the Champions"]
        end
    end

    context "when track added includes non-letter in string" do 
        it "returns that list of strings with no error" do
            music_track = MusicTracks.new
            music_track.add("Bo3emian Rhapsody")
            music_track.add("We are the Champions")
            results = music_track.view_list
            expect(results).to eq ["Bo3emian Rhapsody", "We are the Champions"]
        end
    end

    context "when duplicate track is added" do 
        it "returns an error" do
            music_track = MusicTracks.new
            music_track.add("Bohemian Rhapsody")
            expect{music_track.add("Bohemian Rhapsody")}.to raise_error "Track already added!"
        end
    end

    context "when user tries to return an empty list" do 
        it "returns an error" do
            music_track = MusicTracks.new
            expect{music_track.view_list}.to raise_error "No tracks added!"
        end
    end


end

    