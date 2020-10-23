class Money
  attr_reader :amount

  def initialize (amount, currency)
    @amount = amount
    @currency = currency
  end

  def equals? object
    @amount === object.amount && currency === object.currency
  end

  def self.dollar amount
    Money.new(amount, 'USD')
  end

  def self.franc amount
    Money.new(amount, 'CHF')
  end

  def currency
   @currency 
  end

  def times multiplier
    Money.new(@amount * multiplier, currency)
  end
end
