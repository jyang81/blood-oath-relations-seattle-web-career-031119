require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
puts
sci = Cult.new("Scientology", 1990, "We are crazy", "NYC")
wackos = Cult.new("Wackos", 2001, "Wakka wakka", "Crazyland")
puts "--------Cult Instances----------"
puts
p Cult.all
puts

tom = Follower.new("Tom", 50)
bill = Follower.new("Bill", 32, "Crazy is as crazy does")
jane = Follower.new("Jane", 32)
puts "--------Follower Instances----------"
puts
p Follower.all
puts

oath1 = Bloodoath.new(tom, sci)
oath2 = Bloodoath.new(bill, wackos)
oath3 = Bloodoath.new(tom, sci)
oath4 = Bloodoath.new(jane, wackos)
puts "--------Bloodoath Instances----------"
puts
p Bloodoath.all
puts
puts "-----Number of bloodoaths------"
puts Bloodoath.all.count
puts






# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
