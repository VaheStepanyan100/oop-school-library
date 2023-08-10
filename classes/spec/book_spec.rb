require_relative 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('Habits', 'Covey')
    @teacher = Teacher.new('math', 33, name: 'Meri')
    @rental = Rental.new('03-23-2023', @book, @teacher, [0, 0])
  end

  context 'Add new book:' do
    it 'Check if the @book is an object of the Book' do
      expect(@book).to be_an_instance_of Book
    end
    it 'Check for title' do
      expect(@book.title).to eq 'Habits'
    end
    it 'Check for author' do
      expect(@book.author).to eq 'Covey'
    end
  end

  context 'Change the data to HASH format' do
    it 'Check if the book object is converted to JSON format' do
      hash_obj = @book.to_hash.to_s
      expect(hash_obj).to eq '{"title"=>"Habits", "author"=>"Covey", "rentals"=>[]}'
    end
    it 'Check if the array is converted into hash' do
      expect(@book.to_hash.class).to eq Hash
    end
  end

  context 'When adding a new rentals' do
    it 'The add_rental method returns a rental and adds it to the book' do
      @book.add_rental(@rental)
      expect(@book.rentals.length).to eq 1
    end
  end
end
