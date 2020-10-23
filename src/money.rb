class Money
  attr_reader :amount

  def initialize (amount, currency)
    @amount = amount
    @currency = currency
  end

  def equals? object
    @amount === object.amount && self.class.name === object.class.name
  end

  def self.dollar amount
    Dollar.new(amount, 'USD')
  end

  def self.franc amount
    Franc.new(amount, 'CHF')
  end

  def currency
   @currency 
  end
end
