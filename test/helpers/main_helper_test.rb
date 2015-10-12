require 'test_helper'

class MainHelperTest < ActionView::TestCase
  test "first day is david" do
    date = DateTime.new(2014, 12, 29)
    assert david?(date)
  end

  test "first boris day is jan 5th" do
    date = DateTime.new(2015, 1, 5)
    assert !david?(date)
  end
  test "5 min before change is still david" do
    date = DateTime.new(2015, 1, 5)
    date = date - (5 / 1440.0) #1440 minutes in a day, can only subtract days
    assert david?(date)
  end
  test "first david week for 2016" do
    date = DateTime.new(2016, 1, 11)
    assert david?(date)
  end
end
