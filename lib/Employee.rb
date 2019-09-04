
class Employee
  attr_reader :name, :department
  attr_accessor :salary, :manager

  @@all = []

  def initialize(name, salary)
    @name = name
    @salary = salary
    @@all << self
  end

  def self.all()
    @@all
  end

  def all_departments()
    Department.all
  end

  #takes a String argument that is the name of a department and returns the
  #first employee whose manager is working in that department
  def find_by_department(dept_name)
    employees_department().manager.employees[0]
  end

  def employees_department()
    departments.each do |department|
      department.employees.each do |employee|
        if employee == self
          return department
        end
      end
    end
  end

  def manager()
    employees_department().manager
  end

  def paid_over(ceiling)
      employees_department().find_all { |employee| employee.salary > ceiling }
  end

  #returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
  def tax_bracket()
    all.filter { |employee| employee.salary.between?(self.salary - 1000, self.salary + 1000) }
  end
end
