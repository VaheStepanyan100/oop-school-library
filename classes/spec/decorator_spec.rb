require_relative 'spec_helper'

describe Decorator do
  before :each do
    nameable_mock = double('Nameable', correct_name: 'Covey')
    @decorator = Decorator.new(nameable_mock)
  end

  context 'correct_name' do
    it 'Check if nameable exists' do
      expect(@decorator.correct_name).to eq 'Covey'
    end
  end
end
