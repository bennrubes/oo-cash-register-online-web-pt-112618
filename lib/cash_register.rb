class CashRegister
  attr_accessor :discount, :total, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total * ((100-self.discount.to_f)/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end


end