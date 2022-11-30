#This lecture will show us the versality of the inhect method 

#You can use inject to sum up all of the values in an array

p [11,7,2,4].inject { |acc, el| acc+el}

#You can also use inject to multiply all of the valeus in an array

p [11,7,2,4].inject { |acc, el| acc*el}


#You can also use inject to find the minimum value of an array

p ([11,7,2,4].inject do |acc, el|
    if el < acc
        el 
    else 
        acc 
    end 
end) 



#You have to wrap the entire inject in a () because in Ruby do ... end blocks have a lower 
#precedence than method invocation assigment



#Inject with a default accumulator

p [11,7,2,4].inject(100) {|acc, el| acc+el}


#Use a default accumultor to perform an operation

p ([11,7,2,4].inject(0) do |acc,el|
    if el.even? 
        acc + el
    else 
        acc 
    end 
end) 
