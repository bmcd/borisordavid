require 'date'

class BorisOrDavid
	@start_date = Date.new(2014, 12, 29)

	BORIS = 1

	def self.numberOfWeeksSinceStart(date)
		days_since = date.mjd - @start_date.mjd

		return days_since / 7
	end

	def self.boris?(date)
		week_number = self.numberOfWeeksSinceStart(date)
		modulo = week_number % 2
		puts date.to_s + " " + week_number.to_s + " modulo: " + modulo.to_s
		return modulo == BORIS
	end
end

BorisOrDavid.boris?(Date.new(2014, 12, 31))
BorisOrDavid.boris?(Date.new(2015, 1, 1))
BorisOrDavid.boris?(Date.new(2015, 1, 2))
BorisOrDavid.boris?(Date.new(2015, 1, 3))
BorisOrDavid.boris?(Date.new(2015, 1, 4))
BorisOrDavid.boris?(Date.new(2015, 1, 5))
BorisOrDavid.boris?(Date.new(2015, 10, 6))
BorisOrDavid.boris?(Date.new(2015, 11, 14))
BorisOrDavid.boris?(Date.new(2015, 5, 21))
