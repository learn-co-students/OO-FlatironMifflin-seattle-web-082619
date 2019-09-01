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

    def self.paid_over(num)
        self.all.select { |e| e.salary > num }
    end

    def self.find_by_department(dept)
        m = Manager.all.select { |d| d.department == dept }
        m.collect { |e| e.employees.first }
    end

    def tax_bracket
        Employee.all.select { |e| e.salary <= self.salary + 1000 && e.salary >= self.salary - 1000 }
    end

end
