require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  fixtures :employees
  def new_employee(image_url)
    Employee.new(name: "Toby Fox",
                 biography: "Undertale",
                 profile_pic_url: image_url)
  end

  test "employee attributes must not be empty" do
    employee = Employee.new
    assert employee.invalid?
    assert employee.errors[:name].any?
    assert employee.errors[:biography].any?
    assert employee.errors[:profile_pic_url].any?
  end

  test "profile pic url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif } 
    bad = %w{ fred.doc fred.gif/more fred.gif.more }

    ok.each do |image_url|
      assert new_employee(image_url).valid?,
        "#{image_url} must be valid"
    end

    bad.each do |image_url|
      assert new_employee(image_url).invalid?,
        "#{image_url} must be invalid"
    end
  end

  test "employee is not valid without a unique name" do
    # how does assert equal here work? how does it match the error message? is there a way to see what the error message is and change it?
    employee = Employee.new(name: employees(:will).name,
                            biography: "yyy",
                            profile_pic_url: "schubert.jpg")
    assert employee.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], employee.errors[:name]
  end

  test "employee name is less than 2 characters" do
    employee = Employee.new(name: "A",
                            biography: "yyy",
                            profile_pic_url: "hank.jpg")
    assert employee.invalid?
    assert_equal ["my man your name cannot be 2 characters"], employee.errors[:name]
  end
end
