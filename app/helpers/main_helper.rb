module MainHelper
  START_DATE = DateTime.new(2014, 12, 29)
  DAVID = 0

  def david?(date)
    days_since = date.mjd - START_DATE.mjd
    weeks_since = days_since / 7

    weeks_since % 2 == DAVID
  end
end
