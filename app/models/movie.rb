class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title

    self.class.all << self
  end

  def queue_items
    QueueItem.all.select do |item|
      item.movie == self
    end
  end

  def viewers
    self.queue_items.map do |item|
      item.viewer
    end
  end

  def average_rating
    total = 0
    self.queue_items.select do |item|
      if item.rating != nil
      rating = item.rating
      total += rating
      end
    end
    total / self.viewers.count
  end


  ### Class Methods
  def self.all
    @@all
  end

  def self.highest_rated
    rating_hash = {}

    all.map do |movie|
      rating_hash[movie] = movie.average_rating
    end

    rating_hash.max_by do |k,v|
      v
    end

  end

end ### End of Movie Class

#DONE - Movie.all
# returns an array of all Movie
#
# DONE - Movie#queue_items
# returns an array of all the QueueItem instances that contain this movie
#
# DONE - Movie#viewers
# returns an array of all of the Viewers with this Movie instance in their queue
#
# DONE - Movie#average_rating
# returns the average of all ratings for this instance of Movie
#
# DONE - Movie.highest_rated
# returns the instance of Movie with the highest average rating
