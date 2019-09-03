require 'pry'

class Employee

  attr_reader :name, :salary, :manager_name 

  @@all = []

  def initialize(name, salary, manager_name)
    @name = name 
    @salary = salary 
    @manager_name = manager_name
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  #  def paid_over
  #   salary_array = []
  #   Employee.all.each do |employee|
  #     if employee.salary > 10_000
  #       salary_array << self 
  #     end 
  #   end 
  #   salary_array
  #  end 

end

#return to flatiorn mifflin 