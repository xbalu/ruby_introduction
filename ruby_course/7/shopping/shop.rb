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
