#Prueba de Módulo 4, Natalia Campos Godoy, 0050
#Refactorización de código


#superclase Person
class Person
    attr_accessor :first_name, :last_name, :age
    
    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end

    def name
        "#{first_name} #{last_name}"
    end

    def birthday
        @age += 1
    end

    def talk
        puts @talk
    end
    
    def introduce
        puts @introduce
    end
end

#subclase Teacher
class Teacher < Person
    def initialize(first_name, last_name, age)
        super
        @talk = "Bienvenidos a la clase de programación con Ruby!"
        @introduce = "Hola alumnos. Mi nombre es #{name}."
    end 
end

#subclase Parent
class Parent < Person
    def initialize(first_name, last_name, age)
        super
        @talk = "Aquí es la reunión de apoderados?"
        @introduce = "Hola. Soy uno de los apoderados. Mi nombre es #{name}."    
    end 
end

# subclase Student
class Student < Person
    def initialize(first_name, last_name, age)
        super
        @talk = "Aquí es la clase de programación con Ruby?"
        @introduce = "Hola profesor. Mi nombre es #{name}."
    end
end

#Por ejemplo, si deseo crear un nuevo teacher, obtener su nombre completo y hacerlo presentarse 
# y hablar, ejecuto esto

maestro = Teacher.new('Pedro', 'Soto', 35)
puts maestro.name
maestro.introduce
maestro.talk



