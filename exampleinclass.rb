# MUST have a capital first letter
# This will create a class in Ruby
class Person

# This is the state: e.g. first or last name
# These are called instance methods, because you must have a class Person to use these
  def initialize (first_name, last_name)
    # Memroize the input
    @first_name = first_name
    #@first_name is an instance variable, while first_name is local
    @last_name = last_name
  end

# This is a method = behaviour, to get the name
# Attribute Readers, allows us to read an attribute out of an instance
  def first_name
    return @first_name
  end

  def last_name
    return @last_name
  end

  def first_name=(first_name)
    @first_name = first_name
    # Having "=" at the end of the method will let Ruby know you mean to change
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def greetings
    return "Hi, my name is #{full_name}"
  end
end

fred = Person.new('Fred', 'Ngo')
daniel = Person.new('Daniel', 'Moniz')

fred.first_name= 'Bryan'
fred.last_name= 'Brown'

print "#{fred.first_name} "
print "#{fred.last_name}"
puts ""
puts fred.greetings
# We are creating our own data types for Ruby (Ruby has built in like Floats)
