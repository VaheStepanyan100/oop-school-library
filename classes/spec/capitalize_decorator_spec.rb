require_relative 'spec_helper'

describe Decorator do
  before :each do
    @capitalize_decorator = CapitalizeDecorator.new('Covey')
  end

  context 'correct_name' do
    it 'Check if nameable exists' do
      expect(@capitalize_decorator.nameable).to eq 'Covey'
    end
  end
end
