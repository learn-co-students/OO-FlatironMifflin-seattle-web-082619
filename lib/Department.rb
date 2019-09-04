

class Department
  attr_accessor :employees, :manager, :name
  @@all = []

  def initialize(manager, name)
    @manager = manager
    @name = name
    @@all << self
  end

  def self.all()
    @@all
  end
end
