require "pry"
require_relative "./cult"
require_relative "./bloodoath"

class Follower

attr_accessor :name, :age, :life_motto, :cults

@@all = []

def initialize(name, age, life_motto="TBD")
  @name = name
  @age = age
  @life_motto = life_motto
  @@all << self
end

def join_cult(cult)
  Bloodoath.new(self.name, cult)
end

def cults
  Bloodoath.all.select {|oath| oath.follower == self}.map { |oath| oath.cult }
end

def self.all
  @@all
end

def self.of_a_certain_age(age)
  @@all.select {|follower| follower.age >= age }
end


end
