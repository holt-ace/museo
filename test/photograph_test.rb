require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test

  def setup
    @attributes = {
  id: "1",
  name: "Rue Mouffetard, Paris (Boy with Bottles)",
  artist_id: "4",
  year: "1954"
}
  end
  def test_it_exists
    photo = Photograph.new(@attributes)
    assert_instance_of Photograph, photo
  end

  def test_it_has_id
    photo = Photograph.new(@attributes)
    assert_equal "1", photo.id
  end

  def test_it_has_a_name
    photo = Photograph.new(@attributes)
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photo.name
  end

  def test_for_artist_id
    photo = Photograph.new(@attributes)
    assert_equal "4", photo.artist_id
  end

  def test_photo_year
    photo = Photograph.new(@attributes)
    assert_equal "1954", photo.year
  end
end
