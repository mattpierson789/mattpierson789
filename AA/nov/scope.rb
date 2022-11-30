# If you add $ before a variable it will be accesible throghout your entire program 
#instead of just within a single method

$PROGRAM_NAME = "Scope.rb"

def say_hello
    $message = "hello globe"
end

say_hello
p $message # => "hello globe"

#Constants can be assigned by naming a variable in all caps.  Constants cannots be re-assigned
#Constants will exist in Global Scope
FOOD = "pho"
p FOOD # => "pho"


#Constants, can be mutated, they just cannot be changed.

FOOD[0] = "P"
p FOOD # => "Pho


#Constants will exist in Global Scope.   


$drink = "ice coffee"

def my_favorite
    p FOOD
    p $drink
end

my_favorite