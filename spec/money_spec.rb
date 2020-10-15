require 'spec_helper'
require_relative '../src/dollar'

describe 'Money' do
  describe 'multiplication' do
    it '掛け算が正常に行われること' do
      five = Dollar.new 5
      product = five.times 2
      expect(10).to eq product.amount

      product = five.times 3
      expect(15).to eq product.amount
    end
  end

  describe 'equality' do
    it 'オブジェクトが等しいこと' do
      expect(Dollar.new 5).to be_equals(Dollar.new 5)
    end

    it 'オブジェクトが等しくないこと' do
      expect(Dollar.new 5).not_to be_equals(Dollar.new 6)
    end
  end
end