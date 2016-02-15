require './department.rb'
class Employee
  attr_reader :name, :email, :phone, :salary
  def initialize(name, email, phone, salary)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
  end
  # def eligible_for_raise.array = []
  # def work_satisfactory?

end
