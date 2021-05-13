# 競技プログラミング用 sammary

# 入力値取得
$strn.chomp.split(/\R\)
//入力値が１行の場合　
input = gets.split.map(&:to_i)

//入力値を一括で配列格納
input = readlines.map &:to_i

//変数宣言 + 配列①
a,b,c = gets.split(" ").map &:to_i

//変数宣言 + 配列②　改行なし
a,b,c = gets.chomp.split(" ").map &:to_i

//入力値を改行なしで配列格納
input = readlines(chomp: true).map(&:to_s)

//サンプル用の配列作成
sample = [1,2,3,4]

//出力結果を格納する配列を作成
result = []

//オブジェクト：sample配列　
sample.each do |i|

//変数t：sample配列から変数tに格納される
if i == 1

//上記で作成した配列に格納する
 result.push(i)
end

// readline 二次配列
cline = STDIN.readlines.map{|line| line.split(" ").map(&:to_i)}
#city num

city_num.times do 
    time_difference = gets.chomp.split("").map
    p time_difference
end


r_1**2 =< (x-xc)**2 +(y - yc)**2 <= r_2**2



エレメント内にカウントダウンタイマーを設置
文法的に正しい、英語表記にする
X　minites Y    seconds


gem install fizzbuzz
require 'fizzbuzz';fizzbuzz

(1..100).each do |i|
    if i % 15 == 0　
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
  end