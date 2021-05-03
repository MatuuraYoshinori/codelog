line = []
lines = []

star = gets.chomp.split
line = readlines



line.each{ |x|
    lines << x.chomp.split.map(&:to_i)
}


lines.sort 
num = 50
over = 0

lines = lines.reverse.map(&:reverse)


num.times{|x|
    num.times{|y|
         num.times{|z|
            
            
            x_sel = []
            x_answer = []
            x_lines = []
            # y_lines = []
            # z_lines = []
            answer = []
            answer_line_x = []
            if x!=y and y!=z and x!=z then
            #xと同じ星の配列を抜き出す 
           lines.select { |n| 
                if n[0] == x then
                    x_lines <<  n[1]
                end
           }
            lines.select { |n|
                if n[0] == y then
                    x_lines <<  n[1]
                end
            }
           lines.select { |n|
                if n[0] == z then
                    x_lines <<  n[1]
                end
            }
  
            x_lines.flatten    
            x_lines.sort!
            # 次の値と比較して重複していないならば抽出
            answer = x_lines.select.with_index{|e,i| e != x_lines[i+1] } 
            # answer = x_lines
            if over < answer.size then
            over = answer.size
            puts "#{x} #{y} #{z}"
            end
        end
        }
    }
}

























# count = 0
# lines.sort.each{  |x|
#   puts "#{x[0]} #{x[1]}"
#   if count == 1 then
#     count = 0
#   end
#   count += 1
    
# }
 
# a = 0
# count = 0
# lines.sort.each{|x|
#     if a == x[0].to_i then 
#         count += 1
#     else
#         puts "#{x[]}星は#{count}の関係性をもつ" 
#         a += 1
#         count = 1
#         a = x[0]
#     end
# }

