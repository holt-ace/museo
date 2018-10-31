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
      artist.id == "1"
    end
  end

  def find_photograph_by_id(id)
    @photographs.find do |photo|
      photo.id == "2"
    end
  end
end
