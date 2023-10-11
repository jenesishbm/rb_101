# PSEUDO-CODE

=begin

To practice, write out pseudo-code (both casual and formal) that does the following:

1) a method that returns the sum of two integers

  1C)
  create method that takes 2 integers
  in the body of the method block, add the 2 integers together
  return sum

  1F)
  START

  DEFINE "sum_2" method
  SET input to take 2 integers (num1, num2)
  ADD num1 + num2
  RETURN

  END

2) a method that takes an array of strings, and returns a string that is all those strings concatenated together

2C)
create method that takes an array of strings as input
inside method, return strings concatenated
end

2F)
START 

DEFINE "concat" method
SET input to take an array of strings (arr)
CREATE new variable new_string
ADD << each string to new_string
RETURN new_strnig
END


3) a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.

3C) 
create method that takes an array of integers as input
iterate over every element in the method, selecting every other element
end

3F)
START
DEFINE "every_other" method
SET input to take an array of integers
CREATE empty skip_array
CREATE index variable set at 0
STARTing at arr[0] until done, ADD element in original array to skip_array and add 2 to iterator
RETURN skip_array
END

4) a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

4C)
create a method that takes a character and a string
verify that the string contains at least 3 occurences of the given character
if not, return nil
if so, return index of 3rd occuence
  use a counter?

4F)
START
DEFINE "third" method
SET input to take a character and a string
ITERATE to check if character is present at least 3 times in string
IF yes, SET index to 0 and SET counter to 0
Iterate through characters, updating index and counter appropriately
RETURN index of third occurence (WHEN COUNTER == 3)
ELSE, RETURN nil
END


5) a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes.

5C)
create method that takes 2 arrays as input
iterate over array 1 and add each element of array 2
start at array1[1] and add 2 to iterator each time

5F)
START
DEFINE "split" method
TAKE 2 arrays as input
SET index variable at 1
ITERATE over arrays
  ADD each element of array 2 after each element of array 1[index]
  ADD 2 to index each time
END

=end