#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
  hms = s.delete("^0-9|:").split(":")
  
  hour = hms[0].to_i
  
  if pm?(s)
    hms[0] = hour == 12 ? "12" : format_num(hour + 12)
  else
    hms[0] = hour == 12 ? "00" : format_num(hour)
  end
    
  puts hms.join(":")
end

def pm?(s)
  s.scan(/PM/).any?
end

def format_num(num)
  return "0#{num}" if num < 10
    
  num.to_s
end

timeConversion("12:05:10AM")