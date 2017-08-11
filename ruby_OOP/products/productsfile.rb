class ProductsFile
  attr_accessor :products

  def initialize
    @products = []
  end

  def read_data(filepath)
    CSV.foreach(filepath) do |row|
      @products << Product.new(row[0], row[1])
    end

    @products.delete_at(0)
  end

  def find_product(product_name)
    @products.find { |product| product.name == product_name }
  end

  def find_greather_than(value)
    @products.find_all { |product| product.price.to_f > value }
  end

  def find_less_than(value)
    @products.find_all { |product| product.price.to_f < value }
  end

  def convert_products_prices(rate, currency, tofile)
    CSV.open(tofile, "wb") do |csv|
      csv << ["Product", "Price(#{currency})"]
      @products.each do |product|
        csv << ["#{product.name}", "#{(product.price.to_f / rate).round(2)}"]
      end
    end
  end
end
