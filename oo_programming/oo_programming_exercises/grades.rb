class Student
  def initialize(student, grade)
    @student = student
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade ? true : false
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 93)
eddy = Student.new("Eddy", 79)

p joe.better_grade_than?(eddy)
