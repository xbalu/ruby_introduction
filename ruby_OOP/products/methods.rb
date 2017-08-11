def find_product_command(products_csv)
  product = products_csv.find_product(ARGV[1])
  puts "#{product.name} #{product.price} zł" if product != nil
end

def find_greather_than_command(products_csv)
  products_list = products_csv.find_greather_than(ARGV[1].to_f)
  print_products_list(products_list)
end

def find_less_than_command(products_csv)
  products_list = products_csv.find_less_than(ARGV[1].to_f)
  print_products_list(products_list)
end

def print_products_list(array)
  array.length.times { |i| print "#{array[i].name} #{array[i].price} zł\n"}
end

def currency_conversion_command(products_csv)
  products_csv.convert_products_prices(ARGV[1].to_f, ARGV[2], ARGV[3])
end
