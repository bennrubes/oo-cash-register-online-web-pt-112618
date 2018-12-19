class CashRegister
  attr_accessor :discount, :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    self.total = self.total * ((100-discount.to_f)/100)
    "After the discount, the total comes to $#{self.total}."
  end

end