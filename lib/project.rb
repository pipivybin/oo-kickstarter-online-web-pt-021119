class Project

attr_reader :title

attr_accessor :backers

@@all = []

def initialize(title)
  @title = title
  @backers = []
  save
end

def save
  @@all << self
end


end
