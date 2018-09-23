class Viewer
  attr_accessor :username
  @@all = []

  def initialize(username)
    @username = username

    self.class.all << self
  end

  def queue_items
    QueueItem.all.select do |item|
      item.viewer == self
    end
  end

  def queue_movies
    self.queue_items.map do |item|
      item.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def add_rating(movie, rating)
    self.queue_items.select do |item|
      item.movie == movie
      item.rating = rating
    end
  end

  def rate_movie(movie, rating)
    if self.queue_movies.include?(movie)
      self.add_rating(movie,rating)
    else
      QueueItem.new(movie, self, rating)
    end
  end

  #### Class Methods
  def self.all
    @@all
  end

end ### End of Viewer Class



# DONE - Viewer#rate_movie(movie, rating)
# given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's QueueItem for that movie. If the movie is not already in the viewer's queue, this method should add a new QueueItem with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new QueueItem.

# DONE - Viewer.all
# returns all of the viewers
#
# DONE - Viewer#queue_items
# this method should return an array of QueueItem instances associated with this instance of Viewer.
#
# DONE - Viewer#queue_movies
# this method should return an array of Movie instances in the Viewer's queue.
#
# DONE - Viewer#add_movie_to_queue(movie)
# this method should receive a Movie instance as its only argument and add it to the Viewer's queue
#
