class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Shop
  attr_accessor :name, :products

  def initialize(name)
    @name = name
    @products = []
  end

  def add_product(product, quantity = 1)
    quantity.times { @products << product }
  end

  def take(name)
    index = @products.index { |product| product.name == name }
    return @products.delete_at(index) if index
  end

  def put(name)
    @products << name
  end
end

class Client
  attr_accessor :list
  attr_reader :money, :name, :bag

  def initialize(name, money)
    @name = name
    @money = money
    @bag = []
    @list = []
  end

  def perform_shopping(shop)
    shopping_complete = true if !@list.empty?

    while product_name = list.shift
      product = shop.take(product_name)
      if @money - product.price >= 0
        bag << product
        @money -= product.price
      else
        shopping_complete = false
        shop.put(product)
      end
    end

    shopping_complete
  end

  def please_buy(*product_name)
    product_name.length.times { |i| @list << product_name[i]}
  end
end

require "pp"

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
