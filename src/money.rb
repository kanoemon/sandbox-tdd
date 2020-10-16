class Money
  attr_reader :amount

  def equals? object
    @amount === object.amount && self.class.name === object.class.name
  end
end
