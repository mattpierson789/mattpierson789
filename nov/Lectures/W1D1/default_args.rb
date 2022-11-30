def repeat (str,n=1)
    str * n 
end 

print repeat("Hello",3)



def print_h(name, hash)
    puts name 
    puts hash
end 

 print_h("alvin", "city" => "ny", "color" => "red")



 def modify_string(str, options={"upper" => false, "repeats" => 1})
    str.upcase! if options["upper"]
    p str * options["repeats"]
 end 

 modify_string("bye")
 modify_string("bye", "upper" => true, "repeats" =>3)
