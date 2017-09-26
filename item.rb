class Item

  def initialize(name, price, taxrate)
    @name = name
    @price = price.to_f
    @taxrate = taxrate.to_f
  end

  def name
    return @name
  end

  def price
    return @price
  end

  def totalprice
    @total = @price*@taxrate
  end

end
