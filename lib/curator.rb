class Curator
  attr_reader :artists,
              :photographs
  def initialize
    @artists = []
    @photographs = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def find_photograph_by_id(id)
    @photographs.find do |photo|
      photo.id == id
    end
  end

  def find_photographs_by_artist(artist)
    @photographs.find_all do |photo|
      photo.artist_id == artist.id
    end
  end

  def artists_with_multiple_photographs
    #trying to find a way to retrieve duplicate artist_ids in photographs
    #and compare that to the artist.id
    duplicates = []
    @photographs.each_with_index do |photo, index|
      if photo.artist_id == photo.artist_id
        duplicates << photo.artist_id
      end
    end
    @artists.find do |artist|
      [artist.id] == duplicates
    end
  end
end
