# happy birthday helper
months = {
  "Jan": 1,
  "Feb": 2,
  "Mar": 3,
  "Apr": 4,
  "may": 5,
  "Jun": 6,
  "Jul": 7,
  "Aug": 8,
  "Sep": 9,
  "Oct": 10,
  "Nov": 11,
  "Dec": 12
}

def spank day,month,year
  birthday = Time.local(year,month,day)
  current_date = Time.new
  seconds_in_a_year = (3600 * 24) * 365.25
  cont = 0
  while true
    cont += 1
    birthday += seconds_in_a_year
    if birthday < current_date 
      puts "SPANK!!#{cont}" 
    else 
      break
    end 
  end
end

def happy_birthday_helper name
  filename = "names.txt"
  month = ""
  File.open filename, "r" do |f|
    string_splited = f.split ","
    puts string_splited
    if string_splited[0] == name
      date = string_splited[1].split " "
      month = date[0]
      months.each do |key,val|
        if key == month
          month = val
          break
        end
      end
      day = date[1]
      year = string_splited[2]
      spank day,month,year
    end
  end
end

Dir.chdir '/Users/sjimenez/WorkStation/michelada_projects/homework/ruby_basics/chapter_12'
happy_birthday_helper "Salvador"