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

def add_backer(name)
  @backers << name
  name.back_project(self) unless name.backed_projects.include?(self)
end

end
