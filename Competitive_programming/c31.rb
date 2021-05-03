#本番テストでランタイムエラーがでるが、ケースもエラー文もわからないので
#見送り


# 都市数取得
 city_num = gets.chomp.to_i

array = []

city_num.times do |x|
    #都市　時差
    array << gets.chomp.split
end

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
                puts  "0" + new_time.to_s + user_post[1].to_s.slice(2..5)
            else
                puts  new_time.to_s + user_post[1].slice(2..5)
            end
            
        elsif new_time>25 then
         　new_time = new_time - 24
        　  puts  new_time.to_s + user_post[1].to_s.slice(2..5)
        elsif new_time<0 then
           new_time = new_time + 24
           
            if new_time<10 then
               puts  "0" + new_time.to_s + user_post[1].to_s.slice(2..5)
            else
                puts  new_time.to_s + user_post[1].to_s.slice(2..5)
            end
            
        else
           puts  "0" + new_time.to_s + user_post[1].to_s.slice(2..5) 
        end
}
