lines =[]
line = gets.chomp

line.size.times{ |x|
  lines.push(line.slice(x)) 
    
}

answer =""

lines.each{ |x| 
    case x
        when "A"
            s = "4"
        when "E"
            s = "3"
        when "G"
            s = "6"
        when "I"
            s = "1"
        when "O"
            s = "0"
        when "S"
            s = "5"
        when "Z"
            s = "2"
        else
            s = x
    end
    
    answer <<  s
}

puts answer