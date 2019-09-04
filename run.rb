require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'

#Test your code here
manager1 = Manager.new("ron", 30)
manager2 = Manager.new("jingjing", 40)
manager3 = Manager.new("juan", 33)
manager4 = Manager.new("ston", 55)

#dept_school = Department.new(manager1, "school")
dept_school = Department.new(manager1, "school")
dept_nurse = Department.new(manager2, "nurse")
dept_business = Department.new(manager3, "business")
dept_murder = Department.new(manager4, "murder")


t1 = Employee.new("tommy", 20_000)
t2 = Employee.new("bonny", 30_000)
t3 = Employee.new("zunny", 44_000)
t4 = Employee.new("zoezoe", 44_500)

manager1.hire_employee(t1)
manager1.hire_employee(t2)
manager1.hire_employee(t3)
manager1.hire_employee(t4)


t5 = Employee.new("zofle", 30_000)
t6 = Employee.new("dudy", 30_300)
manager2.hire_employee(t5)
manager2.hire_employee(t6)

t7 = Employee.new("forey", 10_300)
t8 = Employee.new("bo bo", 50_300)
manager3.hire_employee(t7)
manager3.hire_employee(t8)

t9 = Employee.new("lo lo", 99_300)
t10 = Employee.new("zimble yo", 95_300)
manager4.hire_employee(t9)
manager4.hire_employee(t10)


binding.pry
puts "done"
