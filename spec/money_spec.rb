require 'spec_helper'
require_relative '../src/money'
require_relative '../src/dollar'
require_relative '../src/franc'

describe 'Money' do
  describe 'multiplication' do
    it '掛け算が正常に行われること' do
      five = Money.dollar 5
      expect(Money.dollar 10).to be_equals(five.times 2)
      expect(Money.dollar 15).to be_equals(five.times 3)
    end
  end

  describe 'equality' do
    it 'オブジェクトが等しいこと' do
      expect(Money.dollar 5).to be_equals(Money.dollar 5)
      expect(Money.franc 5).to be_equals(Money.franc 5)
    end

    it 'オブジェクトが等しくないこと' do
      expect(Money.dollar 5).not_to be_equals(Money.dollar 6)
      expect(Money.franc 5).not_to be_equals(Money.franc 6)
      expect(Money.dollar 5).not_to be_equals(Money.franc 5)
    end
  end

  describe 'Franc multiplication' do
    it '掛け算が正常に行われること' do
      five = Money.franc 5
      expect(Money.franc 10).to be_equals(five.times 2)
      expect(Money.franc 15).to be_equals(five.times 3)
    end
  end
end