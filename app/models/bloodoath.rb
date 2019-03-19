require "pry"
require_relative "./cult"
require_relative "./follower"

class Bloodoath

attr_accessor :follower, :initiation_date, :cult

@@all = []

def initialize(follower, cult)
  @follower = follower
  @cult = cult
  @initiation_date = Time.now.strftime("%F")
  @@all << self
  # binding.pry
end

def self.all
  @@all
end


end
