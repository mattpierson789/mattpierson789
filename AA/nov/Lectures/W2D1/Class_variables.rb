
#class variables apply to all instances 
#of a class - we can set these above our 
#instance variables and use the syntax @@variable_name = variable 
class Car
    @@num_wheels = 4
  
    def initialize(color)
      @color = color
    end
  
    # getter for @color instance variable
    def color
      @color
    end
  
    # getter for @@num_wheels class variable
    def num_wheels
      @@num_wheels
    end
  end
  
  car_1 = Car.new("red")
  p car_1.num_wheels    # 4
  
  car_2 = Car.new("black")
  p car_2.num_wheels    # 4

  #we can can call an instance variable in 
  #the same way that we call a class variable

  p car_2.color 


class Person 

# Write class variables

    @@soul = 1

#Initialize the class 
def initialize(legs, arms, skin)
    @legs = legs 
    @arms = arms 
    @skin = skin
  end

  #Write Getter methods for each instance of the class 
def legs 
    @legs 

end 

def arms 
    @arms 
end 

def skin
    @skin
end

def soul 
    @@soul

end 

#Write setter methods for each variable

 def arms=(number)
    @age = number
  end

 def legs=(number)
    @legs = number
  end
  
  def skin=(new_skin)
    @skin = new_skin
  end 

    #Can you define a getter function for a class variable?
 def soul=(number)
    @soul=(number)
end
end 

person_1 = Person.new(2,2, "black")
person_2 = Person.new(2, 2, "white")

p person_1.skin
p person_2.soul

#Why is this not working?

person_2.skin = "orange"

p person_2.legs = 3

p person_2.legs 

p person_2.skin


#You can write code to change a class variable but will 
#will effect all present and future instances of that variable

#This would occur above def initalize and uses the syntax 
#def self.upgrade_to_flying_cars
#   @num_wheels = 0
#end 

#This would be called as Car.upgrade_to_flying_cars
#Here we are calling the class rather than the instrance

class Car
    @@num_wheels = 4
  
    def self.upgrade_to_flying_cars
      @@num_wheels = 0
    end
  
    def initialize(color)
      @color = color
    end
  
    def num_wheels
      @@num_wheels
    end
  end
  
  car_1 = Car.new("red")
  car_2 = Car.new("black")
  
  p car_1.num_wheels    # 4
  p car_2.num_wheels    # 4
  
  Car.upgrade_to_flying_cars
  
  p car_1.num_wheels    # 0
  p car_2.num_wheels    # 0
  
  car_3 = Car.new("silver")
  p car_3.num_wheels    # 0


p car_3.color


  #We can define a class constant by using NUM_WHEELS 
  #instead of @@num_wheels.  Class constants cannot be 
  #updated later.
  
  
  class Car
    NUM_WHEELS = 4
  
  
    def initialize(color)
      @color = color
    end
  
    def num_wheels
      NUM_WHEELS
    end
  end
  
  
  car_1 = Car.new("red")
  car_2 = Car.new("black")
  
  p car_1.num_wheels    # 4
  p car_2.num_wheels    # 4
  
  Car.upgrade_to_flying_cars