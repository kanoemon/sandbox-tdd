require 'spec_helper'
require_relative '../src/dollar'

describe 'Money' do
  describe 'multiplication' do
    it '$5 * 2 = $10になること' do
      five = Dollar.new(5)
      five.times(2)
      expect(10).to eq five.amount
    end
  end
end