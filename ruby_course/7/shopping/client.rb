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
