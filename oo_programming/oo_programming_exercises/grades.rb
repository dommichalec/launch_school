class Student
  attr_accessor(:grade)
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

p joe.better_grade_than?(eddy) # => true
p eddy.grade # => grades.rb:23:in `<main>': protected method `grade' called
# for #<Student:0x007f846124c628 @student="Eddy", @grade=79> (NoMethodError)
