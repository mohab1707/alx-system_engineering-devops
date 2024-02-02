#!/usr/bin/env ruby

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

input_string = ARGV[0]

pattern = /[A-Z]/

capital_letters = input_string.scan(pattern).join

puts capital_letters
