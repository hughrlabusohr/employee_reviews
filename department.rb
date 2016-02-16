class Department
  attr_reader :name, :staff
  def initialize (:name, :staff)
    @name = name
    @staff = []
  end
  def add_employee (new_employee)
    staff = [] << new_employee
  end
end
def employee_salary
  staff[0]employee.salary
