#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
  sums = []
  
  arr.length.times do |idx|
    sums << arr.reject.with_index { |_elm, i| idx == i }.reduce(:+)
  end
  
  puts "#{sums.min} #{sums.max}"
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
