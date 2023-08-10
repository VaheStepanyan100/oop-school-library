require_relative 'spec_helper'

describe CapitalizeDecorator do
  before :each do
    @capitalize_decorator = CapitalizeDecorator.new('Covey')
  end

  context 'correct_name' do
    it 'should return the correctly capitalized name' do
      expect(@capitalize_decorator.nameable).to eq 'Covey'
    end
  end
end
