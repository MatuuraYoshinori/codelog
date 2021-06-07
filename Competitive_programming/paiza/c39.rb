

line = []
line = gets.chomp.split("+")
answer = 0
line.each{ |x|
      num_i = 0
      num_t = 0
      
    x.size.times{ |i|
        if x[i]=="/" then 
            num_i = num_i + 1
        elsif x[i]=="<" then 
            num_t = num_t + 10
        end
    }
    
     answer = answer + num_i + num_t
  
}

puts answer