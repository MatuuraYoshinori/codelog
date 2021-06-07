log_num = gets.chomp.to_i
input = readlines.map &:to_i
move_num=0
old_num=1
log_num.times{ |x|

    now_num = input[x]
        def_num = old_num.to_i - now_num.to_i
        def_num.abs
        move_num = move_num + def_num.abs
    old_num = input[x]
}

puts move_num