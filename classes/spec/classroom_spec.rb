require_relative 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Math')
    @student = Student.new(@classroom, 10, parent_permission: true, name: 'Covey')
  end

  context 'Add student' do
    it 'Check if student is created inside the classroom class' do
      @classroom.add_student(@student)
      expect(@classroom.students[0]).to be_an_instance_of Student
    end
  end
end
