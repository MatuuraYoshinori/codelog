

input_line = gets.to_i
 o_line = input_line*1500
 print o_line

 1 合あたり 150 gとし N 合のお米がある時、何gになるかを出力してください。


input_line = gets

str_list = input_line.split(" ")


k = str_list[0].to_i
f = str_list[1].to_i

o_line = (k-f).abs

print o_line


num_arr = gets.split.map {|n| n.to_i}

puts 
count = 0
# print input_line
#  for count  in  1..7 do 
#     if   > 30 then
#         get_out_c = get_out_c+1
#     end
#     count=count+1 
# end

# o_line =   get_out_c
# print o_line

num_arr.map do |i|
    if i<30 then 
        count = count + 1
        puts i
    end 
end

# print count
print count


複数行から要素を取得
複数行の標準入力を行ごとに配列に要素分けしたい場合もsplitメソッドが使えます。

$stdin.read.split(/\R/)
 

複数行から複数要素を取得
複数行の標準入力を行ごとに配列に要素分けして、さらに行内でも配列に要素分けしたい場合はmapメソッドが使えます。

$stdin.read.split(/\R/).map {|r| r.split(/\s/) }



while line = gets
  line.chomp! # 改行を削除
  if line.to_i < 30 then
  count = count + 1
  end
  print "line = #{line}\n" #入力値確認
end



count = 0
while line = gets
  line.chomp! # 改行を削除

  if line.to_i<31 then  
      count = count + 1
  end
end

print count




while line = gets
 print line.split
end 

#print line

line.map do |i|
    print "line =#{i}\n"
    
end

line = gets.split


x = line[0].to_i
y = line[1].to_i

a = x*6000 + y*4000

print a


line = gets.to_i

st = ""
line.times do
    st = st + "*"
end

print st

s.split(//)


line = gets.split
x = line[0].to_i
y = line[1].to_i

ans_y = "Yes"
ans_n = "No"

case x
    when 10 then
        if y==10 then 
            print ans_y
        elsif
            print ans_n
        end
    when 11 then
        if y==1 || y==11 then 
            print ans_y
        elsif
            print ans_n
        end
    when 12 then
        if y==12 then 
            print ans_y
        elsif
            print ans_n
        end
    else
        #月が一桁の場合
        if x =y then 
            print  ans_y
        elsif
            print ans_n
        end
end
        


        sary = gets.chomp.split("")
ans = "YES"
sary.map{|e| ans = "NO" if e != sary[0] }
p ans


sary = gets.chomp.split("")
ans = "YES"
sary.map{|e| ans = "NO" if e != sary[0] }
p ans

line = gets.split
x = line[0].to_i
y = line[1].to_i

ans_y = "Yes\n"
ans_n = "No\n"
# xとyが二桁の場合分割

case x
    when 1 then
        if y==1 || y== 11 then 
            print ans_y
        else
            print ans_n
        end
    when 2 then
        if y== 2 || y==22
            print ans_y
        else
            print ans_n
        end
    when 10 then
        if y==10 then 
            print ans_y
        else
            print ans_n
        end
    when 11 then
        if y==1 || y==11 then 
            print ans_y
        else
            print ans_n
        end
    when 12 then
        if y==12 then 
            print ans_y
        else
            print ans_n
        end
    else
        if x=y then 
            print  ans_y
        else 
            
            print ans_n
        end
end



sary = gets.chomp.split(" ")

line = ""
print sary
  sary.map{|e|  line = "#{line}"+"#{e}"
      print line
  }
print line
line = line.split("")
print line
ans = "YES"
line.map{|e| ans = "NO" if e != line[0] }
p ans

sary = gets.chomp.split(" ")
ans_y = "Yes\n"
ans_n = "No\n"
line = ""
# print sary
  sary.map{|e|  line = "#{line}"+"#{e}"
    #   print line
  }
# print line
line = line.split("")

# print line
ans = ""
ans = ans_y
line.map{|e| ans = ans_n if e != line[0] }
print ans



n 分から秒に変換

n = gets.
answer = n*60

運賃計算

初乗り100yen
区間ごとに10yen++


n = gets.chomp.to_i

answer = 100+(n*10)


複数形への変換
・末尾が s, sh, ch, o, x のいずれかである英単語の末尾に es を付ける
・末尾が f, fe のいずれかである英単語の末尾の f, fe を除き、末尾に ves を付ける
・末尾の1文字が y で、末尾から2文字目が a, i, u, e, o のいずれでもない英単語の末尾の y を除き、末尾に ies を付ける
・上のいずれの条件にも当てはまらない英単語の末尾には s を付ける

単語の数を取得
word_num = gets.chomp
単語を取得

line = gets.read.split(/\R/)

print line

if line.end_with?("s, sh, ch, o, x")


argument


n = gets.chomp.to_i

p n*12

N × (N - 1) / 2



line = $stdin.read.split(/\R/)
x = line[0].to_i
y = line[1].to_i

puts x*y

sary = gets.chomp.split(" ")
x = sary[0].to_i
y = sary[1].to_i

奇数か偶数か
line = gets.chomp.to_i
 if line.even? then
    puts "even\n"
else
    puts "odd\n"
end

.even?　偶数
.odd? 奇数

.upcase 大文字に変換

N 角形の内角の和は 180 × (N - 2) 

f = n/180
puts f+2


sary = gets.chomp.split(" ")
x = sary[0].to_i
y = sary[1].to_i

puts x


line = $stdin.read.split(/\R/)
x = "Gold " + line[0].to_s  + "\n"
y = "Silver " + line[1].to_s + "\n"
z = "Bronze " + line[2].to_s + "\n"

answer = x+y+z
puts answer 