class Rental
  attr_accessor :data, :book, :person

  def initialize(data, book, person)
    @data = data
    @person = person
    @book = book
    person&.add_rental(self)
    book&.add_rental(self)
  end
end
