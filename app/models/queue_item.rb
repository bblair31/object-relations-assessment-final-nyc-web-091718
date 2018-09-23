class QueueItem
  attr_accessor :movie,:viewer,:rating
  @@all = []

  def initialize(movie, viewer, rating = nil)
    @movie = movie
    @viewer = viewer
    @rating = rating

    @@all << self
  end

  def viewer
    @viewer
  end

  def movie
    @movie
  end

  def rating
    @rating
  end

  ### Class Methods
  def self.all
    @@all
  end
end ### End of QueueItem Class

# A QueueItem object represents that an individual user has added a particular movie to their queue, and possibly rated it. It is not the full queue, but a single item in the queue.
#
# DONE - QueueItem.all
# returns an array of all QueueItems
#
# DONE - QueueItem#viewer
# returns the viewer associated with this QueueItem
#
#DONE - QueueItem#movie
# returns the movie associated with this QueueItem
#
# DONE - QueueItem#rating
# returns the rating for this QueueItem. If the viewer has not yet rated the movie, QueueItem#rating should be nil
