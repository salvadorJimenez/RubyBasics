# our dear author's age
seconds_age = 1_160_000_000
hours_age = seconds_age / 3600
days_age = hours_age / 24
years_age = days_age / 365.25

puts "The author of this book is #{years_age.to_i} years old"