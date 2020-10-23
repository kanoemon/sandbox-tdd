require 'spec_helper'
require_relative '../src/money'
require_relative '../src/bank'

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

  describe 'Currency' do
    it 'currencyが取得できること' do
      expect('USD').to eq Money.dollar(1).currency()
      expect('CHF').to eq Money.franc(1).currency()
    end
  end

  describe 'Simple addition' do
    it '足し算ができること' do
      sum = Money.dollar(5).plus Money.dollar(5)

      five = Money.dollar(5)
      sum = five.plus(five)

      bank = Bank.new
      reduced = bank.reduce(source: sum, to: 'USD')
      expect(Money.dollar 10).to be_equals(reduced)
    end
  end

  describe 'Plus returns sum' do
    it '足し算をして、Sumオブジェクトが返ること' do
      five = Money.dollar(5)
      sum = five.plus(five)
      expect(five).to eq sum.augend
      expect(five).to eq sum.addend
    end
  end

  describe 'Reduce sum' do
    it '足し算した結果を換算し、Moneyオブジェクトが返ること' do
      sum = Sum.new(Money.dollar(3), Money.dollar(4))

      bank = Bank.new
      result = bank.reduce(source: sum, to: 'USD')
      expect(Money.dollar 7).to be_equals(result)
    end
  end

  describe 'Redice money' do
    it 'Moneyオブジェクトを換算し、Moneyオブジェクトが返ること' do
      bank = Bank.new
      result = bank.reduce(source: Money.dollar(1), to: 'USD')

      expect(Money.dollar 1).to be_equals(result)
    end
  end
end