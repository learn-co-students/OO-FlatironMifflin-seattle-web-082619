
class Manager
      attr_reader :name, :department, :age
      @@all = []

      def initialize(name, age)
        @name = name,
        @age = age
        @@all << self
      end

      def self.all
        @@all
      end

      #returns a String that is the department that the manager oversees
      def managers_department
        Department.all.each do |department|
          if department.manager == self
            return department
          end
        end
      end

      #returns an Array of all the department names that every manager oversees
      def self.all_departments
        Department.all.map do |department|
          department.name
        end
      end

      #returns an Array of all the employees that the manager oversees
      def employees
        managers_department.employees
      end

      #takes a String argument and a Fixnum argument of an employee's name
      def hire_employee(employee)
        employees << employee
      end

      def self.average_age
        avg = 0
        all.each do |manager|
          avg += manager.age
        end
        avg / all.length.to_f
      end
end
