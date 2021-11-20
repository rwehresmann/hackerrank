#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
  zeros = arr.select { |n| n == 0 }
  positives = arr.select { |n| n > 0 }
  negatives = arr.select { |n| n < 0 }
  
  print_ratio(calculate_ratio(positives, arr))
  print_ratio(calculate_ratio(negatives, arr))
  print_ratio(calculate_ratio(zeros, arr))
end

def calculate_ratio(values, originalArray)
  values.length.fdiv(originalArray.length)
end

def print_ratio(value)
  puts '%.6f' % value
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr