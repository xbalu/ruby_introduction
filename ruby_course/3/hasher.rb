#!/usr/bin/env ruby
require "digest"

def hash_file(filepath)
  Digest::MD5.file(filepath).hexdigest
rescue
  print "Couldn't calculate hash for file #{filepath} (check the filepath)"
end

def compare_hash(filepath, hash)
  hash_file(filepath) == hash ? "Hashes are equal" : "Hashes are not equal"
end

if ARGV.length == 1
  puts hash_file(ARGV[0])
elsif ARGV.length == 2
  puts compare_hash(ARGV[0], ARGV[1])
else
  puts "Usage: ./hasher.rb <filename1> <hash>"
  exit(0)
end
