require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

matt = Astronaut.new("Matt", 27, "test subject")
steve = Astronaut.new("Steve", 37, "biotech")
edgar = Astronaut.new("Edgar", 26, "engineer")
elias = Astronaut.new("Elias", 22, "nothing")
mike = Astronaut.new("Mike", 24, "sleeping")

s1 = Shuttle.new("tesla.s", 3)
s2 = Shuttle.new("Falcon Heavy", 4)
s3 = Shuttle.new("Big Ship", 2)
s4 = Shuttle.new("normandy sr-4", 5)

m1 = Mission.new(2013, matt, s1)
m2 = Mission.new(2014, steve, s1)
m3 = Mission.new(2017, steve, s2)
m4 = Mission.new(2013, edgar, s3)
m5 = Mission.new(2019, mike, s3)
m5 = Mission.new(2020, mike, s4)

s1.add_astronaut(elias, 2020)
edgar.join_shuttle(s1, 2020)
edgar.join_shuttle(s2, 2020)


binding.pry

puts "Let's go to space!" # just in case pry is buggy and exits
