
#We can define a class method which will apply to any 
#instance of the class.  We can input instances as paramters 
#into this method in order to get an output.

class Dog
    def initialize(name, bark)
      @name = name
      @bark = bark
    end
  
    def self.whos_louder(dog_1, dog_2)
      if dog_1.bark.length > dog_2.bark.length
        return dog_1.name
      elsif dog_1.bark.length < dog_2.bark.length
        return dog_2.name
      else
        return nil
      end
    end
  
    def name
      @name
    end
  
    def bark
      @bark
    end
  end
  
  d1 = Dog.new("Fido", "woof")
  d2 = Dog.new("Doge", "much bork")
  p Dog.whos_louder(d1, d2) # "Doge"