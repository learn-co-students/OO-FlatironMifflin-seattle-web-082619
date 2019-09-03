require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

#manager test examples 
m1 = Manager.new("Henry","Shipment",30,@Employee)

#employee 
e1 = Employee.new("Ian",30,000,"Henry")


binding.pry
puts "done"
