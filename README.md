# Ruby-school-library

Create class Person with the following:
Instance vars: @id, @name, and @age.
Constructor with name, age, and parent_permission as parameter. name and parent_permission are optional and have default values of "Unknown" and true.
Getters for @id, @name, and @age.
Setters for @name and @age.
Private method is_of_age? that returns true if @age is greater or equal to 18 and false otherwise.
Public method can_use_services? that returns true if person is of age or if they have permission from parents.
Create class Student with the following:
Inherits from Person.
Constructor extends parent's constructor by adding @classroom and a parameter for it.
Method play_hooky that returns "¯\(ツ)/¯".
Create class Teacher with the following:
Inherits from Person.
Constructor extends parent's constructor by adding @specialization and a parameter for it.
Override can_use_services? so it always returns true.