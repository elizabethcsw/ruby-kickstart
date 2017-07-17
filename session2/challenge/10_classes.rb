# Make a person class that has a name, age, and birthday
#
# josh = Person.new 'Josh', 28
#
# josh.name     # => "Josh"
# josh.age      # => 28
#
# josh.name = 'Joshua'
# josh.name     # => "Joshua"
#
# josh.birthday # => 29 #increment 1 everytime .birthday is called by the instance
# josh.age      # => 29 #age follows the incremented value
#
# josh.birthday # => 30
# josh.age      # => 30
#

class Person
  attr_accessor 'name', 'age'
  def initialize(name, age)
    @name = name
    @age = age
  end

  def birthday
    @age +=1
  end
end

#josh=Person.new "Joo", 28
#josh.age
#josh.birthday
