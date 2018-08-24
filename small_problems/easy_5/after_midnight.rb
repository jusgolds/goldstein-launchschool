# => The time of day can be represented as
# => the number of minutes before or after midnight
# => If the number of minutes is positive, the time is after midnight
# => If the number of minutes is negative, the time is before midnight.
# => Write a method that takes a time using this minute-based format
# => and returns the time of day in 24 hour format (hh:mm).

# if number < 60, just the number of minutes to add
# otherwise, total / 60 for hours & total % 60 for minutes
# add these numbers to default time (00:00)
