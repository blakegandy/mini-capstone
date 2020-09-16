require "HTTP"

system "clear"
puts "Enter 1 to display all products"
puts "Enter 2 to display a single item"

input = gets.chomp

if input == "1"
  response = HTTP.get("http://localhost:3000/api/products").parse

  puts response
elsif input == "2"
  response = HTTP.get("http://localhost:3000/api/products/2").parse

  puts response

elsif input = "3"
  response = HTTP.patch("http://localhost:3000/api/products/2").parse

elsif input = "4"
  response = HTTP.delete("http://localhost:3000/api/products/2")
end
