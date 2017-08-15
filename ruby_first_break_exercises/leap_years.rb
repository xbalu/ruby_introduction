require "./leap_year?.rb"
require "pp"

def leap_years(array)
  result_array = []
  array.each do |element|
    result_array << element if leap_year?(element)
  end
  result_array
end

pp leap_years([2011, 2012, 2015, 2016, 2018])
pp leap_years((2000..2100).to_a)
