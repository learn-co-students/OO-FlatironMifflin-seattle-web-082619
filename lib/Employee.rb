class Employee
    attr_reader :name
    attr_accessor :salary, :manager
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        self.manager
    end

    def self.paid_over(amount)
        self.all.select {|emp| emp.salary > amount}
    end 

    def self.find_by_department(department)
        self.all.find {|emp| emp.manager}
    end

    def tax_bracket
    end
end
