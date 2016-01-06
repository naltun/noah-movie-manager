require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  test "should not save movie without title" do
    movie = Movie.new
    assert_not movie.save, "Saved a movie without a title"
  end
  
  test "should not save movie without format" do
    movie = Movie.new(title: "A Title")
    assert_not movie.save, "Saved movie without a format"
  end
  
  test "should not save movie without length" do
    movie = Movie.new(title: "A Title", format: "VHS")
    assert_not movie.save, "Saved movie without a length"
  end
  
  test "should not save movie without a release year" do
    movie = Movie.new(title: "A Title", format: "VHS", length: 90)
    assert_not movie.save, "Saved movie without a release year"
  end
  
  test "should not save movie without a rating" do
    movie = Movie.new(title: "A Title", format: "VHS", length: 90, release_year: Date.new)
    assert_not movie.save, "Saved movie without a rating"
  end
  
end
