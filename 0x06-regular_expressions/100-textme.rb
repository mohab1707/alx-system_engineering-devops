#!/usr/bin/env ruby

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <log_file>"
  exit 1
end

log_file_path = ARGV[0]

# Read the content of the log file
log_content = File.read(log_file_path)

# Define the regular expression pattern for extracting sender, receiver, and flags
pattern = /\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/

# Extract matches from the log content
matches = log_content.scan(pattern)

# Output the results
matches.each do |match|
  sender = match[0]
  receiver = match[1]
  flags = match[2]

  puts "#{sender},#{receiver},#{flags}"
end
