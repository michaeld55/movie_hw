require('minitest/autorun')
require('minitest/reporters')
require_relative('../movie')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Test_Movie < Minitest::Test

  def test_film_name()

    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"] )
    assert_equal( "The fly", test_film.film_name() )

  end

  def test_film_rating()
    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"])
    assert_equal( 9, test_film.film_rating() )
  end

  def test_film_profit()

    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"] )
    assert_equal( 10000, test_film.film_revenue() )

  end

  def test_change_name()

    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"])
    test_film.film_name = "The birds"
    assert_equal( "The birds", test_film.film_name() )

  end

  def test_change_rating()

    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"])
    test_film.film_rating = 5
    assert_equal( 5, test_film.film_rating() )

  end

  def test_change_revenue()

    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"])
    test_film.film_revenue = 20000
    assert_equal( 20000, test_film.film_revenue() )

  end

  def test_add_revenue()

    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"])
    test_film.add_revenue( 100 )
    assert_equal( 10100, test_film.film_revenue() )

  end

  def test_remove_revenue()

    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"] )
    test_film.add_revenue( -100 )
    assert_equal( 9900, test_film.film_revenue() )

  end

  def test_add_rating()

  test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"])
  test_film.add_rating( 1 )
  assert_equal( 10, test_film.film_rating())

  end

  def test_remove_rating()

    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"] )
    test_film.add_rating( -1 )
    assert_equal( 8, test_film.film_rating())

  end

  def test_actors_names()

      test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"] )
      assert_equal(["Jeff Goldblum", "Geena Davis"], test_film.film_actors())

  end

  def test_add_actor()
    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"] )
    test_film.add_actor( "John Getz", ["Jeff Goldblum", "Geena Davis"] )
    assert_equal( ["Jeff Goldblum", "Geena Davis", "John Getz"], test_film.film_actors() )

  end

  def test_remove_actor

    test_film = Movie.new( "The fly", 9, 10000, ["Jeff Goldblum", "Geena Davis"] )
    test_film.remove_actor( "Geena Davis", ["Jeff Goldblum", "Geena Davis"]  )
    assert_equal( ["Jeff Goldblum"], test_film.film_actors() )


  end
end
