require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramble::InstanceMethods
  extend Findable::ClassMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super #Super keyword means it will run this code THEN the module's code
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
