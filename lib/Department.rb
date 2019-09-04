

class Department
  attr_accessor :employees, :manager, :name
  @@all = []

  def initialize(manager, name)
    @manager = manager
    @employees = []
    @name = name
    @@all << self
  end

  def self.all()
    @@all
  end
end
