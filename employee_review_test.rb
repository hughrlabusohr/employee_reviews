require 'minitest/autorun'
require 'minitest/pride'

#Note: This line is going to fail first.
require './employee.rb'

class EmployeeAndDepartmentTest < Minitest::Test
  def test_classes_exist
    assert Employee
    assert Department
  end

  def test_employee_attributes_exist
    assert a
    assert_equal "Trey Anastasio", a.name
    assert_equal "readthebook@hfb.com", a.email
    assert_equal "919-365-6666", a.phone
    assert_equal 1,000,000, a.salary
end
