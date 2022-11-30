def greet(first_name, last_name)
    p "Hey " + first_name +" ,your last name is " + last_name
  end

names = ["Grace", "Hopper"]

greet(*names)

old_hash = {a: 1, b:2}
new_hash = {**old_hash, c: 3}
p new_hash


# You can add a splat operator to the method in order to make it some you can add an undefined amount of arguments

def say_hello(first_name, *last_name)
    p first_name
    p last_name
end
    
say_hello("alvin", "zabian", "teacher", "apple", "cat")

# You can use a splat operator to the evaluation portion of the method in order to remove the brackets

def hello_2(first_name, last_name)
    p first_name
    p last_name
end

arr = ["a", "z"]

hello_2(*arr)