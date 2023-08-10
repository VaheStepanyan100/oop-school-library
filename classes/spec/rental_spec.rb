require_relative 'spec_helper'

describe Rental do
  before :each do
    @book = Book.new('Habits', 'Covey')
    @teacher = Teacher.new('math', 30, name: 'Covey')
    @rental = Rental.new('14-08-2023', @book, @teacher, [0, 0])
  end

  context 'Add a rental' do
    it 'Check of the rental is an object of the Rental class' do
      expect(@rental).to be_an_instance_of Rental
    end

    it 'Check if the rental.book is an object of the Book class' do
      expect(@rental.book).to be_an_instance_of Book
    end

    it 'Check if the rental.teacher is an object of the Teacher class' do
      expect(@rental.person).to be_an_instance_of Teacher
    end
  end

  context 'Change the data to HASH format:' do
    it 'Check if the object is converted into hash' do
      expect(@rental.to_hash.class).to eq Hash
    end
  end
end
