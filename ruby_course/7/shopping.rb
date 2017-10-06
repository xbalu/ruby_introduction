require "./shopping/client.rb"
require "./shopping/product.rb"
require "./shopping/shop.rb"
require "pp"

puts "Program name: #{$0}"

shop = Shop.new("Stonka")
shop.add_product(Product.new("ser", 10), 1)
shop.add_product(Product.new("chleb", 5), 1)
shop.add_product(Product.new("jogurt", 4), 2)
shop.add_product(Product.new("szynka", 12), 1)
shop.add_product(Product.new("mleko", 3), 3)

client = Client.new("Janusz", 100)
client.list = ["chleb", "jogurt", "szynka", "ser"]
client.please_buy("jogurt", "mleko", "mleko")
pp client.list
client.perform_shopping(shop)

pp client.bag
pp shop.products
