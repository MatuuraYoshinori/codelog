line = []
lines = []
rline = []
star = gets.chomp.split
line = readlines



line.each{ |x|
    lines << x.chomp.split.map(&:to_i)
}


lines.sort 
num = 50
over = 0
#要素の反転と結合
 rline = lines.reverse.map(&:reverse)
 rline.sort!
 lines = lines.concat(rline)  

#要素の重複を削除
lines.flatten  
lines.sort!
# 次の値と比較して重複していないならば抽出
p lines = lines.select.with_index{|e,i| e != lines[i+1] } 
f =[]
num.times{|x|
    num.times{|y|
         num.times{|z|
            
            x_sel = []
            x_answer = []
            x_lines = []
            y_lines = []
            z_lines = []
            answer = []
            answer_line_x = []
            if x!=y and y!=z and x!=z then
            #xと同じ星の配列を抜き出す 
           lines.select { |n| 
                if n[0] == x then
                    x_lines <<  n[1]
                end
           }
           if x_lines.size > 10 then 
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



# 都市数取得
city_num = gets.chomp.to_i

array = []

city_num.times do |x|
    #都市　時差
    array << gets.chomp.split
end
 array

#ユーザー都市　ユーザー時間
user_post = gets.chomp.split
user_post[0]
ref_time = 0
#ユーザー都市の時差を取得
array.select{|x| 
    if x[0]==user_post[0] then 
       ref_time = x[1].to_i
    end
}

array.each{ |x|
    new_time = user_post[1].to_s.slice(0..1).to_i + ( x[1].to_i - ref_time)
        if new_time<25 && new_time > 0 then
            if new_time<10 then
                puts  "0" + new_time.to_s + user_post[1].slice(2..5)
            else
                puts  new_time.to_s + user_post[1].slice(2..5)
            end
        elsif new_time>25 then
         　new_time = new_time - 24
        　  puts  new_time.to_s + user_post[1].slice(2..5)
        elsif new_time<0 then
           new_time = new_time + 24
            if new_time<10 then
               puts  "0" + new_time.to_s + user_post[1].slice(2..5)
            else
                p new_time
                p user_post[1]
        　      puts new_time.to_s + user_post[1].slice(3..5)
        　      end
        
        end
}
