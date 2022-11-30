
# Syntax for passing a block into a method 
#array.map { |block_param| block_param.method }

#This can be abbreviated as 
#array.map(&:method)

#Example of the different syntax options to call a 
#method within a block

p ["a", "b", "c"].map(&:upcase) # => ["A", "B", "C"]
p ['a"', "b", "c"].map(&:upcase) # => ["A", "B", "C"]

#Array upcase using the shorthand for blocks

block = ["a", "c", "e"] 

p block.map!(&:upcase)

#Select odd numbers using block shorthand

 p [1, 2, 5].select { |num| num.odd? }       #=> [1, 5]

 p [1, 2, 5].select(&:odd?)      #=> [1, 5]

#More practice 

 p [1,2,5].select {|num| num.odd?}

 p [1,2,5].select(&:odd?)


 #Creating a new Proc - callable block of code

 doubler = Proc.new { |num| num * 2 }
p doubler # #<Proc:0x00007f9a8b36b0c8>

#Practice 
doubler = Proc.new {|num| num*2}

# We use Proc#call(num) in order to call a Proc
is_even = Proc.new do |num|
    if num % 2 == 0
      true
    else
      false
    end
  end
  
  p is_even.call(12) # => true

  #Passing a Proc into a method

  # Version 1: manual, proc accepting method
def add_and_proc(num_1, num_2, prc)
    sum = num_1 + num_2
    p prc.call(sum)
  end
  
  doubler = Proc.new { |num| num * 2 }
  add_and_proc(1, 4, doubler)   # => 10
  
  
  # Version 2: automatic conversion from block to proc
  def add_and_proc(num_1, num_2, &prc)
    sum = num_1 + num_2
    p prc.call(sum)
  end

  #Here we are able to just have a block in the test 
  #case because we have the &prc in the paramters
  
   p add_and_proc(1, 4) { |num| num * 2 }  # => 10

   #More practice

   def add_and_proc(num_1, num_2, prc)

    sum = num_1 + num_2

    p prc.call(sum)

   end 

doubler = Proc.new { |num| num * 2 }
add_and_proc(1, 4, doubler)   # => 10

square = Proc.new { |num| num * num }
add_and_proc(3, 6, square)    # => 81

negate = Proc.new { |num| -1 * num }
add_and_proc(3, 6, negate)    # => -9