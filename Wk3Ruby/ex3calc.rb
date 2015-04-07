#This will continue to calculate how many days and hours I have left until I complete the Makers Academy course

#Creates a variable containing the current time and puts it to screen
time_now = Time.new
puts time_now

#Creates a variable containing the time when course will finish and puts it to screen
end_course = Time.mktime(2015, 7, 17, 17, 00, 00)
puts end_course

#Subtracts end course time from time now to produce number of seconds between those two points in time
time_in_seconds = end_course - time_now

#Creates series of converters and assumptions for later calculations
Seconds_convert_days = (24*60*60)
Seconds_convert_hours = (60*60)
Avg_daily_coding = 8

#Calculates the days, hours and estimated coding hours until course ends
days_til_end_course = time_in_seconds/Seconds_convert_days
puts "#{days_til_end_course.round(0)} days"
hours_til_end_course = time_in_seconds/Seconds_convert_hours
puts "#{hours_til_end_course.round(0)} hours"
est_coding_hours = days_til_end_course * Avg_daily_coding
puts "#{est_coding_hours.round(0)} likely coding hours"