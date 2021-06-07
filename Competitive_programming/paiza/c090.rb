=begin 

黒電話　ダイヤル
電話番号に対しダイヤルの回る総距離を出力

ハイフン付きの電話が入力されることを想定

=end

#入力の受け取り
input = gets.split("-").map(&:to_s)
a = ""
input.each{|i|
  a = a + i
}
a = a.chomp
c = a.length
distance= 0

c.times {|i|
    y = a.slice(i).to_i
    if  y == 0  then
        distance = distance + (12 + 12)
    else
        m = (y + 2)*2
        distance = distance + m
    end
}


puts distance