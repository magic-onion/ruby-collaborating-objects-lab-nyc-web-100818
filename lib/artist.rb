class Artist

  attr_accessor :name, :songs

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(name)
    @@all.find do |artist|
      name == artist.name
    end
  end

  def self.find_or_create_by_name(name)
    if self.find(name) == nil
      Artist.new(name)
    else
      self.find(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
