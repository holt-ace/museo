require 'minitest/autorun'
require 'minitest/pride'
require './lib/artist'

class ArtistTest < Minitest::Test

  def setup
    @attributes = {
  id: "2",
  name: "Ansel Adams",
  born: "1902",
  died: "1984",
  country: "United States"
}
  end
  def test_it_exists
    artist = Artist.new(@attributes)
    assert_instance_of Artist, artist
  end

  def test_artist_id
    artist = Artist.new(@attributes)
    assert_equal "2", artist.id
  end

  def test_artist_name
    artist = Artist.new(@attributes)
    assert_equal "Ansel Adams", artist.name
  end

  def test_year_born
    artist = Artist.new(@attributes)
    assert_equal "1902", artist.born
  end

  def test_year_died
    artist = Artist.new(@attributes)
    assert_equal "1984", artist.died
  end

  def test_country_of_origin
    artist = Artist.new(@attributes)
    assert_equal "United States", artist.country
  end

end
