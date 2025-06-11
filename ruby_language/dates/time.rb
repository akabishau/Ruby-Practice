Time.at(0) # January 1, 1970 00:00:00 UTC
Time.at(1_000_000) # January 12, 1970 13:46:40 UTC

next_week = Time.now + 7 * 24 * 60 * 60 # Adding 7 days in seconds

# instance methods
year = Time.now.year # current year
month = Time.now.month # current month
day = Time.now.day # current day
hour = Time.now.hour # current hour
minute = Time.now.min # current minute
second = Time.now.sec # current second

yday = Time.now.yday # current day of the year (1-366)
wday = Time.now.wday # current day of the week (0-6, 0 is Sunday)

# examples
utc_offset = Time.now.utc_offset # seconds since UTC (0 is UTC)
zone  = Time.now.zone # time zone name (e.g. "UTC", "PST", "EST")
isdst = Time.now.isdst? # true if Daylight Saving Time is in effect


strftime = Time.now.strftime("%Y-%m-%d %H:%M:%S") # format time as string
