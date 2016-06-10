class CashRegister
attr_accessor :total, :discount, :items
# attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    # i = 0
    # while i < quantity
    #   @items << item
    #   i+=1
    # end
    quantity.times{ @items << item }
    @transaction = price * quantity
    @total += @transaction
  end

  def apply_discount
    if discount > 0
      @total -= @total * @discount.fdiv(100) # fdiv makes it a float
      "After the discount, the total comes to $#{total.to_i}."
    else @discount = nil
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    # get the current total
    # get the last transaction
    # substract total with last transaction
    @total -= @transaction
  end

end
