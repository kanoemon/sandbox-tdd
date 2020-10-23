require 'spec_helper'
require_relative '../src/money'

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
end