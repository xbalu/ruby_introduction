require "httparty"
require "json"

def print_category_and_joke
  puts "Category: #{$body_hash["value"]["categories"].join(", ")}"
  puts "Joke: #{$body_hash["value"]["joke"]}"
end

body = HTTParty.get('https://api.icndb.com/jokes/random').body
$body_hash = JSON.parse(body)
print_category_and_joke
