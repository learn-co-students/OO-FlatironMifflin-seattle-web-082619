class Manager
    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select do |employee|
            employee.manager == self
        end
    end
    

    def hire_employee(name, salary)
        Employee.new(name, salary)
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        total_age = self.all.reduce(0) do |sum, n|
            sum + n.age
        end
    end


        
end
