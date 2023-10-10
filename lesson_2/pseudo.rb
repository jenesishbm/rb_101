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



5) a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes.




=end