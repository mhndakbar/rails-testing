require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it should save employee" do 
    emp1 = Employee.new
    emp1.name = "Mohanned"
    emp1.email = "m@m.com"
    emp1.salary = 100.0
    emp1.job = "Programmer"

    assert emp1.save
  end
  test "it should update employee" do
    emp1 = Employee.new
    emp1.name = "Mohanned"
    emp1.email = "m@m.com"
    emp1.salary = 100.0
    emp1.job = "Programmer"
    emp1.save

    emp1.name = "Khalid"
    assert_equal(emp1.name, "Khalid")
  end
  test "it should delete employee" do
    emp1 = Employee.new
    emp1.name = "Mohanned"
    emp1.email = "m@m.com"
    emp1.salary = 100.0
    emp1.job = "Programmer"
    emp1.save

    assert emp1.destroy
  end
end
