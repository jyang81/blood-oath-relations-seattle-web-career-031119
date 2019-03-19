require "pry"
require_relative "./follower"
require_relative "./bloodoath"

class Cult

attr_accessor :name, :founding_year, :slogan, :location, :followers

@@all = []

def initialize(name, founding_year, slogan, location)
  @name = name
  @location = location
  @founding_year = founding_year.to_i
  @slogan = slogan
  @@all << self
end

def recruit_follower(follower)
  Bloodoath.new(follower, self)
end

def followers
  Bloodoath.all.select {|oath| oath.cult == self}.map { |oath| oath.follower }
end

def cult_population
  followers.count
end

def self.all
  @@all
end

def self.find_by_name(name)
  @@all.find {|cult| cult.name == name }
end

def self.find_by_location(location)
  @@all.select {|cult| cult.location == location }
end

def self.find_by_founding_year(founding_year)
  @@all.select {|cult| cult.founding_year == founding_year }
end

end
