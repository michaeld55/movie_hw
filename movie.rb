class Movie

  # attr_reader :holder_name, :balance, :type
  # attr_writer :holder_name, :balance, :type

  attr_accessor :film_name, :film_rating, :film_revenue, :film_actors

  def initialize( film_name, film_rating, film_revenue, film_actors )

    @film_name = film_name
    @film_rating = film_rating
    @film_revenue = film_revenue
    @film_actors = film_actors

  end

  def add_revenue( amount )

    @film_revenue += amount

  end

  def add_rating( amount )

    @film_rating += amount

  end

  def add_actor( new_actor, existing_actors )

    @film_actors = existing_actors.push( new_actor )

  end

  def remove_actor( removed_actor, existing_actors )

    existing_actors.delete( removed_actor )
    @film_actors = existing_actors
  end

end
