# part of standard library but not loaded by default
require 'date'

# similar to Time class, but for dates only
Date.today
Date.new(2023, 10, 1) # October 1, 2023
Date.parse("2023-10-01") # October 1, 2023
Date.parse("Dec 31, 1998") # December 31, 1998
Date.today.to_time # convert to Time object

leap = Date.leap?(2020) # true
cweek = Date.civil(2023, 10, 1).cwday # 7 (Sunday)
Date.today.next_day # Date object for next week
Date.today.prev_day # Date object for previous week
Date.today.tuesday? # true if today is Tuesday
