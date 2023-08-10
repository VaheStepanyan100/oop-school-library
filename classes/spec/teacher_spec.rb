require_relative 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new('Math', 30, name: 'Covey')
  end

  context 'Create an object of the teacher class' do
    it 'should return the correct name = Covey' do
      expect(@teacher.name).to eq 'Covey'
    end

    it 'should return the correct age = 30' do
      expect(@teacher.age).to eq 30
    end

    it 'should return the correct specialization = Math' do
      expect(@teacher.specialization).to eq 'Math'
    end
  end

  context 'When using can_use_servides? method' do
    it 'should return false if under age and no parent permission' do
      expect(@teacher.can_use_services?).to be true
    end
  end

  context 'Change the data to HASH format:' do
    it 'Check if the object is converted into hash' do
      expect(@teacher.to_hash.class).to be Hash
    end
  end
end