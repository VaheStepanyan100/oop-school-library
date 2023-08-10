require_relative 'spec_helper'

describe Decorator do
  before :each do
    @decorator = Decorator.new('Covey')
  end

  context 'correct_name' do
    it 'Check if nameable exists' do
      expect(@decorator.nameable).to eq 'Covey'
    end
  end
end
