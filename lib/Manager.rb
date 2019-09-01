class Manager
    attr_reader :name, :department, :age
    attr_accessor :employees, :salary, :manager_name

    @@all = []

    def initialize(name, department, age, employees=[])
        @name = name
        @department = department
        @age = age 
        @employees = []
        @@all << self
    end

    def self.all 
        @@all
    end

    def hire_employee(employee, salary)
        emp = Employee.new(employee, salary, self.name)
        @employees << emp
        emp
    end

    def self.all_departments
        Manager.all.collect { |d| d.department }
    end

    def self.manager_ages
        Manager.all.collect { |a| a.age }
    end

    def self.average_age
        self.manager_ages.sum.to_f / self.manager_ages.length
    end

end
