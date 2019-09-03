require 'pry'

class Manager

  attr_reader :name, :department, :age, :employees 

  @@all = []

  def initialize(name, department,age, employees)
    @name = name 
    @department = department 
    @age = age
    @employees = []
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  # def hire_employees(name,salary)
  #   @employees << 
  # end 


end
