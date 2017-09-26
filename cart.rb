require "./item.rb"

class Cart
@@cart = []

  def self.add(name, price, taxrate)
    @item = Item.new(name, price, taxrate)
    @@cart << @item
    return @item
  end

  def self.remove(removethis)
    @@cart.each do |item|
      if item.name == removethis
        @@cart.delete(item)
      end
    end
  end

  def self.total_before
    total_before = @@cart.inject(0.00) {|sum, n| sum + n.price}
    return total_before
  end

  def self.total_after
    total_after = @@cart.inject(0.00) {|sum, n| sum + n.totalprice}
    return total_after.ceil
  end

  def self.items
    return @@cart
  end

end

orange = Cart.add("orange", "3.00", "1.10")
melon = Cart.add("melon", "5.00", "1.10")
carrot = Cart.add("carrot", "2.00", "1.10")
human = Cart.add("human", "100.00", "1.10")
puts orange.inspect
puts Cart.items.inspect
puts Cart.total_before
puts Cart.total_after
Cart.remove("orange")
puts Cart.items.inspect
