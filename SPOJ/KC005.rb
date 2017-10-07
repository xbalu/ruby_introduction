require 'date'

def valid_date?(str)
  Date.strptime(str, "%Y-%m-%d")
rescue
  false
end

loop do
  line = gets
  break if !line

  data = line.split(" ")
  name = data[1][0...-1]
  surname = data[3][0...-1]

  if !name[0][/[[:upper:]]/] || name[1..-1][/[[:upper:]]/] || name[/[0-9\W]/]
    puts 0
  elsif !surname[0][/[[:upper:]]/] || surname[1..-1][/[[:upper:]]/] || surname[/[0-9\W]/]
    puts 1
  elsif !valid_date?(data[-1]) || !(1900..2000).include?(data[-1][0..3].to_i)
    puts 2
  else
    puts 3
  end
end
