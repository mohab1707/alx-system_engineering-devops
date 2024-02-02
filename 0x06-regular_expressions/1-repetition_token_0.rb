#!/usr/bin/env ruby

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

input_string = ARGV[0]


pattern = /hbt*n/

if input_string.match?(pattern)
  puts input_string
else
  puts ""
end
