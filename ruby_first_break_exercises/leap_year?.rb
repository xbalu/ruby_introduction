def leap_year?(year)
  ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) ? true : false
end

leap_year?(2004)
leap_year?(2000)
leap_year?(2100)
