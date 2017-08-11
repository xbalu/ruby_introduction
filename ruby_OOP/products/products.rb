require "csv"
require "./methods.rb"
require "./productsfile.rb"
require "./product.rb"

products_csv = ProductsFile.new
products_csv.read_data("products.csv")

case ARGV[0]
when "-f"
  find_product_command(products_csv)
when "-gt"
  find_greather_than_command(products_csv)
when "-lt"
  find_less_than_command(products_csv)
when "-c"
  currency_conversion_command(products_csv)
end
