# PRACTICE PROBLEMS: MEDIUM 2

# 1. Take a look at the following code and predict the output:

a = "forty two"
b = "forty two"
c = a # c is initialized to the object referenced by a

puts a.object_id #same
puts b.object_id #different
puts c.object_id #same

# 2. Take a look at the following code and predict the output:
a = 42
b = 42
c = a

puts a.object_id #same
puts b.object_id #same
puts c.object_id #same

# Integers are immutable in Ruby. As a result, a, b, and c all reference the same immutable integer 42 object. 

# 3. Study the following code and state what will be displayed...and why:
def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
# will return pumpkins because += simply re-assigns string_param_one to a new string object with the value of pumpkins+rutabaga, only visible inside the method.
# in other words, string_param_one and string_arg_one no longer point to the same object.
puts "String_arg_two looks like this now: #{string_arg_two}"
# will return pumpkinsrutabaga because << mutates the caller

# 4. To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the user's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga' # modifies the caller and mutates original string
  an_array_param = ['pumpkins', 'rutabaga'] # re-assigns array inside the method, remains unchanged outside of method
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # pumpkinsrutabaga
puts "My array looks like this now: #{my_array}" # ["pumpkins"]

# 5.

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  return a_string_param, an_array_param # must add this to return both values, otherwise only returns the array since it was executed last
end

my_string = "pumpkins"
my_array = ["pumpkins"]
not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# 6. How could the following method be simplified without changing its return value?
# before
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# simplified
def color_valid(color)
  (color == "blue" || color == "green")? true : false
end

# even further
def color_valid(color)
  color == "blue" || color == "green"
end

color_valid("blue")
color_valid("red")