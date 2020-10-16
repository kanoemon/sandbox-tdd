class Money
  attr_reader :amount

  def equals? object
    @amount === object.amount
  end
end
