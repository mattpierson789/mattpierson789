# Define your methods here. 

def first_letter_vowel_count(sentence)

    vowels = "aeiou"
    count = 0 
    words = sentence.split(" ")

    words.each do |word| 

      if vowels.include?(word[0].downcase)  
        
        count +=1
        
      end 

    end 
        
    return count

end 

def count_true(array, &prc1)

    count = 0 

    array.each do |ele|

        if prc1.call(ele)
            count += 1
        end 
        
    end    
        
    return count 

end 


def procformation(array, &proc1, &proc2, &proc3)

new_array = [] 

    array.each do |ele|

        if proc1.call(ele)
         
            new_array << proc2.call(ele)

        else 

             new_array << proc3.call(ele)

        end 

    end 

    return new_array 

end 




def array_of_array_sum(array)

    array.flatten.sum


end 


def selective_reverse(sentence)

    words = sentence.split(" ")
    vowels = "aeiou"
    new_string = " "

    words.each do |word|
        if vowels.include?(word[0])

           new_string+= word.reverse

        else 

            new_string+= word 

        end 


    end 

    new_string

end 

def hash_missing_keys(hash, *eles)

eles.select {|ele| !hash.has_key?(ele)}

end 