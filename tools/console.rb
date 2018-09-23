require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("web123")
v2 = Viewer.new("user456")
v3 = Viewer.new("easy987")

m1 = Movie.new("X-Men")
m2 = Movie.new("Harry Potter")
m3 = Movie.new("Jurrasic Park")
m4 = Movie.new("Avengers")

q1 = QueueItem.new(m1, v1, rating = 2)
q2 = QueueItem.new(m2, v2)
q3 = QueueItem.new(m3, v3, rating = 4)
q4 = QueueItem.new(m4, v1, rating = 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
