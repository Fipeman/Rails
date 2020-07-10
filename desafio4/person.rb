class Person
  def initialize(first, last, age, type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
  end
  
  def birthday
    @age += 1
  end
end

class Student < Person
  # def initialize(type)
  #   @type = type
  # end

  def talk
    puts "Aquí es la clase de programación con Ruby?"
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Teacher < Person
  # def initialize(type)
  #   @type = type
end

class Student < Person
  # def initialize(type)
  #   @type = type
  # end

  def talk
    puts "Bienvenidos a la clase de programación con Ruby!"
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Parent < Person
  # def initialize(type)
  #   @type = type
  # end

  def talk
    puts "Aquí es la reunión de apoderados?"
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end

a1 = Student.new("a","b",11,"Estudiante")
puts a1.talk
puts a1.introduce
puts a1.birthday



#   def talk
#     if @type == "Student"
#       puts "Aquí es la clase de programación con Ruby?"
#       elsif @type == "Teacher"
#       puts "Bienvenidos a la clase de programación con Ruby!"
#       elsif @type == "Parent"
#       puts "Aquí es la reunión de apoderados?"
#     end
#   end
  
#   def introduce
#     if @type == "Student"
#     puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
#       elsif @type == "Teacher"
#       puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
#       elsif @type == "Parent"
#       puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #
#       {@last_name}."
#     end
#     end
# end