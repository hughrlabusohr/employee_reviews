require 'minitest/autorun'
require 'minitest/pride'

#Note: This line is going to fail first.
require './employee.rb'

class EmployeeAndDepartmentTest < Minitest::Test
  def test_classes_exist
    assert Employee
    assert Department
  end

  def test_can_create_employee_and_can_get_attributes_exist
    e = Employee.new("Trey Anastasio", "readthebook@hfb.com", "919-365-6666", "1,000,000")
    assert e
    assert_equal "Trey Anastasio", e.name
    assert_equal "readthebook@hfb.com", e.email
    assert_equal "919-365-6666", e.phone
    assert_equal "1,000,000", e.salary
  end

  def  test_can_create_department_and_attributes_exist
    assert d
    assert_equal Department.new, "d.name"
  end

  def test_get_indiv_employee_salary
    assert _equal "salary", Employee.new ("1,000,000").salary
  end

  def test_add_employee_to_staff
    a = Employee.new ("Trey Anastasio", "readthebook@hfb.com", "919-365-6666", "1,000,000")
    b = Department.new ("Finance")
    b.add_employee(a)
    assert_equal b.staff[0].name, ("Trey Anastasio")
    assert_equal b.staff[0].email, ("readthebook@hfb.com")
    assert_equal b.staff[0].phone, ("919-365-6666")
    assert_equal b.staff[0].salary, (1,000,000)

end
