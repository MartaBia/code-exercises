=begin
Write a Ruby program to model Students and Universities.
A Student is characterised by its name, surname, gender
(use a Module to represent male/female, as explained here: https://www.delftstack.com/howto/ruby/use-enum-in-ruby/)
and an id (string).
A University is described by its name and the list of its Students.
The class University should expose methods to add a new Student, remove a Student,
retrieve the data for a Student from its id and return the ratio of males/females currently studying in it.
=end

class Student
  attr_accessor :id
  attr_accessor :gender

  def initialize(name, surname, gender, id)
    @name = name
    @surname = surname
    @gender = gender
    @id = id
  end

  def to_s
    "#{@id}: #{@name} #{@surname}, #{@gender}"
  end

end

class University
  def initialize(name)
    @name = name
    @students = {}
  end

  def add(student)
    @students[student.id.to_sym] = student
  end

  def remove(student)
    @students.delete(student.id.to_sym)
  end

  def retrieve(id)
    @students[id.to_sym]
  end

  def male_ratio
    males = 0
    females = 0
    @students.each do |id, student|
      student.gender == "M" ? males += 1 : females +=1
    end
    females == 0 ? "infinity" : males / females
  end
end

marta = Student.new("Marta", "Bianchini", "F", "5287651")
tommaso = Student.new("Tommaso", "Papini", "M", "5189765")
charles = Student.new("Charles", "Brown", "M", "ZK33456")
mary = Student.new("Mary", "Smith", "F", "ZL12345")
mario = Student.new("Mario", "Rossi", "M", "5180123")

firenze = University.new("Universita' degli Studi di Firenze")
london = University.new("University of London")

firenze.add(marta)
firenze.add(tommaso)
firenze.add(mario)
puts firenze.male_ratio
london.add(charles)
london.add(mary)
puts london.male_ratio
puts firenze.retrieve("5287651").to_s
puts london.retrieve("ZL12345").to_s
firenze.remove(firenze.retrieve("5287651"))
puts firenze.male_ratio
