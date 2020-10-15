require 'spec_helper'
require_relative '../src/dollar'

describe 'Money' do
  describe 'multiplication' do
    it '$5 * 2 = $10になること' do
      five = Dollar.new(5)
      product = five.times(2)
      expect(10).to eq product.amount

      product = five.times(3)
      expect(15).to eq product.amount
    end
  end
end