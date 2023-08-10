require_relative 'spec_helper'

describe TrimmerDecorator do
  before :each do
    nameable_mock = double('Nameable', correct_name: 'ThisIsALongName')
    @decorator = TrimmerDecorator.new(nameable_mock)
  end

  context 'correct_name' do
    it 'Returns a trimmed name' do
      expect(@decorator.correct_name).to eq 'ThisIsALon'
    end
  end
end
