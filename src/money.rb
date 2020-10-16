class Money
  attr_reader :amount

  def equals? object
    @amount === object.amount && self.class.name === object.class.name
  end

  def self.dollar amount
    Dollar.new amount
  end

  def self.franc amount
    Franc.new amount
  end
end
