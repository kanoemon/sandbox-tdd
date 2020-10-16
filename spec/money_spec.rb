require 'spec_helper'
require_relative '../src/dollar'
require_relative '../src/franc'

describe 'Money' do
  describe 'multiplication' do
    it '掛け算が正常に行われること' do
      five = Dollar.new 5
      expect(Dollar.new 10).to be_equals(five.times 2)
      expect(Dollar.new 15).to be_equals(five.times 3)
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

  describe 'Franc multiplication' do
    it '掛け算が正常に行われること' do
      five = Franc.new 5
      expect(Franc.new 10).to be_equals(five.times 2)
      expect(Franc.new 15).to be_equals(five.times 3)
    end
  end
end