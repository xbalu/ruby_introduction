#!/usr/bin/env ruby
puts "Ruby script!"

if ARGV.length != 1
  puts "Usage: ./hello.rb name"
else
  puts "Hello, #{ARGV[0]}"
end
