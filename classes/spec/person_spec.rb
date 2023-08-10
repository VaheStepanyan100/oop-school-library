require_relative 'spec_helper'

describe Person do
  before :each do
    @person = Person.new(20, 50, name: 'Covey')
    @unknown = Person.new(20, 30)
    @book = Book.new('Habits', 'Covey')
    @rental = Rental.new('14-08-2023', @book, @person, [0, 0])
  end

  context 'When testing a Prson class' do
    it 'takes parameters and returns a Person object' do
      expect(@person).to be_an_instance_of Person
    end

    it 'should return the correct age = 50' do
      expect(@person.age).to eql 50
    end

    it 'should return the correct name = Covey' do
      expect(@person.name).to eql 'Covey'
    end
  end

  context 'When using can_use_services? method' do
    it 'should return false if under age and no parent permission' do
      expect(@person.can_use_services?).to be true
    end

    it 'should return true if have parent permission' do
      expect(@unknown.can_use_services?).to be true
    end
  end

  context 'When adding a new rentals' do
    it 'The add_rental method returns a rental and adds it to the book' do
      @person.add_rental(@rental)
      expect(@person.rentals.length).to eql 1
    end
  end

  context 'When using correct_name method' do
    it 'should return the correct name' do
      expect(@unknown.correct_name).to eql 'Unknown'
    end
  end
end