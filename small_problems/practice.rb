######################## ATTEMPT 3 AT SMALL PROBLEMS #############################################

# Easy 1.6
def triangle(size)
  spaces = size - 1
  stars = 1

  size.times do
    puts (" " * spaces) + ("*" * stars)
    stars += 1
    spaces -= 1
  end
end

# 1.6 Further exploration

=begin
Below is an example of an area for growth in my PEDAC process.
My approach was so simple it ended up creating more complicated code: 
I defined different methods for collecting information (2) and creating each orientation of the triangle (4).
Then, in my last method, I invoked these other methods to create the final triangle.
Though it works, it's too long, not elegant. Almost 60 lines of code where there only need to be 10.
All the way underneath my code, there's a solution from another LS student that demonstrates thinking-like-a-coder.
Review for future improvements.
=end
def gets_sides
  sides = nil
  puts "How tall do you want your right triangle to be?"
  puts "Enter a positive integer:"
  sides = gets.chomp.to_i
end
  
def gets_orientation
  orientation = nil
  puts <<-MSG 
  Where would you like the top of your triangle to be?
  Press 1 for upper left
  Press 2 for upper right
  Press 3 for lower left
  Press 4 for lower right
  MSG
  orientation = gets.chomp.to_i
end

def top_left(num)
  stars = 1
  spaces = num - 1

  num.times do
    puts "*"*stars + " "*spaces
    stars +=1
    spaces -=1
  end
end

def top_right(num)
  stars = 1
  spaces = num - 1
  
  num.times do
    puts " "*spaces + "*"*stars
    stars +=1
    spaces -=1
  end
end

def bottom_left(num)
  stars = num
  spaces = 0
  
  num.times do
    puts "*"*stars + " "*spaces
    stars -=1
    spaces +=1
  end
end

def bottom_right(num)
  stars = num
  spaces = 0
  
  num.times do
    puts " "*spaces + "*"*stars
    stars -=1
    spaces +=1
  end
end

def print_triangle
  sides = gets_sides
  orientation = gets_orientation

  case orientation
  when 1 then top_left(sides)
  when 2 then top_right(sides)
  when 3 then bottom_left(sides)
  when 4 then bottom_right(sides)
  end
end

# LS solution 1 by Luke Tuttle
def triangle(n, pos = 'bottom-right')
  row_nums = (1..n).to_a
  # determines up down orientation
  row_nums.reverse! if pos.include?('top')

  row_nums.each do |line_n|
    # creates a line with stars justified/aligned to the right
    line_str = "#{' ' * (n - line_n)}#{'*' * line_n}"
    # reorients the stars to the left if specified in the arg supplied to `pos`
    line_str.reverse! if pos.include?('left')

    puts line_str
  end
end

# LS solution 2
def triangle(n, pos = 'bottom-right')
  row_nums = (1..n).to_a
  shape = row_nums.map {|line_n| "#{' ' * (n - line_n)}#{'*' * line_n}" }
  shape.reverse! if pos.include?('top')
  shape.map! { |ln| ln.reverse } if pos.include?('left') # shape.map!(&:reverse) also works

  puts shape
end

# 1.7