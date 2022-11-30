

# Once we define a class using initialize 
# and setting input parameters we can 
# call an instance of the class using 
# our get name method. 

class Cat 
    def initalize(name, age, color)
        @name = name
        @age = age 
        @color - color
      
    end

    def name
      @name
    end 


class Cat
    def initialize(name, color, age)
      @name = name
      @color = color
      @age = age
    end
  
    def get_name
      @name
    end
  end
  
  cat_1 = Cat.new("Sennacy", "brown", 3)
  p cat_1.get_name # "Sennacy"




  #To define a setter method we need to use 
  #age= instead of age.
  #def age=(number)
       #@age = number
  class Cat
    def initialize(name, color, age)
      @name = name
      @color = color
      @age = age
    end
  
    # getter
    def age
      @age
    end
  
    # setter
    def age=(number)
      @age = number
    end
  end
  
  cat_1 = Cat.new("Sennacy", "brown", 3)
  p cat_1 #<Cat:0x007f8511a6f340 @age=3, @color="brown", @name="Sennacy">
  cat_1.age = 42
  p cat_1 #<Cat:0x007f8511a6f340 @age=42, @color="brown", @name="Sennacy">