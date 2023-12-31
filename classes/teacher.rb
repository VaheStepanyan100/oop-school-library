require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(specialization, age, name: 'Unknown', id: nil, parent_permission: true)
    id ||= Random.rand(1..200)
    super(id, age, name: name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_hash
    {
      'id' => @id,
      'type' => self.class.name,
      'name' => @name,
      'age' => @age,
      'specialization' => @specialization,
      'parent_permission' => @parent_permission,
      'rentals' => @rentals.map { |rental| { 'date' => rental.date } }
    }
  end
end
