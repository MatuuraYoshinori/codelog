
複数行を読み込むとき
readlineを使おうとして、あまりうまくいかなかったが
getsをまわしていくことで
入力を取得していた

while line = gets
  line.chomp! # 改行を削除
  print "line = #{line}\n"
end


while line = gets
  line.chomp! # 改行を削除
  print "line = #{line}\n" #入力値確認
end



２の何乗かを確認する
https://www.8toch.net/hachiben/anki.cgi?mid=IT00003
365日の中で
存在する2の乗算は以下
2
4
8
16
32
64
128
256

単純に出力させるのであれば

if x == 2 || 4 || 8 || 64 || 32 || 128 || 256 then 
    print "OK"
end

if (n&(n-1)) == 0 then




