class Classroom

  attr_reader :subject,
              :capacity,
              :students

  def initialize(subject, capacity)
    @subject    = subject
    @capacity   = capacity
    @students   = []
  end

  def add_student(new_student)
    @students.append(new_student)
  end

  def yell_at_students
    new_arr = []
    @students.each do |student|
      yelled_at = student.upcase
      new_arr.append(yelled_at)
    end
    return new_arr
  end

  def over_capacity?
    return @students.length > @capacity
  end

  def kick_out
    @students.delete_at(0)
  end

end
