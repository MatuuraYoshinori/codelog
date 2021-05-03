
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
puts answer
end



3つの数字を比較する



line = gets.chomp!.split(" ").map(&:to_i)

a = line[0]
b = line[1]
c = line[2]


if ((a>b&&a>c&&b>c)||(c>a&&c>b&&b>a)) 
    p b
elsif ((b>a&&b>c&&a>c)||(c>a&&c>b&&a>b)) 
    p a
else
    p c
end


line = gets.chomp!

i = line.size#文字数の取得
i = i +2
s = "+"*i
line =  "+"+line+"+"

puts s
puts line
puts s

# 母音チェック
line = gets.chomp!

i = line.size
answer=""

boin = "a","i","u","e","o","A","I","U","E","O"
boincheck = true
i.times{|x|
    a = line[x]

    boin.each{|c|
        if c==a then
            boincheck = false
        end    
        
    }

    if boincheck then
        answer =  answer + a
    end
    
    boincheck = true
}

print answer



PAIZAタウンでは、公共交通の手段としてタクシーが発達しています。
様々な料金のタクシーがあるため、初乗りが安くても最終的な運賃が高いタクシーを拾ってしまうかもしれません。

タクシーの運賃は初乗り距離と初乗り運賃、加算距離、加算運賃で決まります。
タクシーの乗車距離が初乗り距離未満の場合は、初乗り運賃だけで移動することができます。
初乗り距離と同じ距離だけ乗車した段階で、運賃に加算運賃が追加され、以後加算距離を移動する毎に加算運賃が追加されていきます。

あなたは今いる場所から X メートル離れた場所へ、 1 台のタクシーで移動しようとしています。
利用可能なタクシー N 台の料金のパラメータが与えられるので、タクシーで X メートル移動した際の最安値と最高値を計算してください。

例えば、 入力例 1 の場合は以下のように 600円 が最安値となり、 800円 が最高値となります。
1 番目のタクシーは初乗り距離以上なので加算距離 1 つ分が追加され 600円 かかります。
2 番目のタクシーは初乗り距離までで到着するので、初乗り運賃のみで 800円 かかります。


x 距離
n 複数の料金パラメータ

・2 ≦ N ≦ 100
・1 ≦ X ≦ 100,000
・1 ≦ a_i, b_i, c_i, d_i ≦ 5,000 (1 ≦ i ≦ N)
初乗り距離 a_i、 初乗り運賃 b_i、 加算距離 c_i、 加算運賃 d_i が整数でこの順にスペース区切りで与えられます。

#最安値と最高値を求めろ

# 距離を取得


# 初乗り距離以下の場合
componey.times{|x|
    if x=1 then 
        if 初乗り距離がxメートル以下の時 then 
            初乗り以内の距離check = true
        end
    end
    if x=2 then 
        if 初乗りの以内の距離check then 
            最終運賃 = 初乗り運賃
            break
        end
    if x=3 then
        if != 初乗り以内の距離 then
            加算距離保持　=　加算距離
        end
    if x=4　then
        上乗せ料金回数　=　(x　-　初乗り距離)　/　カザン距離保持
        最終料金 = 初乗り料金＋上乗せ料金回数*加算運賃
        if 最終料金　< 前回最終料金 
            if 最終料金 < 最小料金　
                最小料金
            end
        elsif　最終料金　>　前回最終料金
            if 最終料金 > 最大料金 
                最大料金 = 最終料金
            end
        end
    end
   　前回最終料金=　最終料金
}

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

#city num
city_num = gets.chomp.to_i

city_num.times do 
    time_difference = gets.chomp.split("").map
    p time_difference
end


#正規表現を使ったintの確認
puts !! (value.to_s =~ /^[0-9]+$/)




hashに格納[town_name,time_difference]
post_userからtown_nameを一致させ検索
基準にする

　=　基準都市時間　+　(time_difference - 基準都市_時間)


input_line = gets.to_i
input_line.times do
  s = gets.chomp.split(" ")
  print "town = #{s[0]} , time_def = #{s[1]}\n"
end


# 小数.to_f

#　べき乗算**
2**2
3**9


# post_user = gets.chomp.split(" ")
p ary_a
# puts post_user


# ary_a.each {|x|

# if !! (x.to_s =~ /^[0-9]+$/) then
#     p hour = post_user[1].slice(0..1).to_i 
#     # puts hour.to_s + ":" + post_user[1].slice(3..4)

# end
# }

# post_user[1]


https://kuromame-blog.com/ruby%E3%81%A7%E6%A8%99%E6%BA%96%E5%85%A5%E5%8A%9B%E3%81%AE%E5%80%A4%E3%82%92%E5%8F%96%E5%BE%97%E3%81%99%E3%82%8B/








9
18
24
30
38
46
50
54
59
65
67
70
79
81
88
92
94
100
106
108


mad_hacker 

N M　


星の数、文化的交流

X星の文化的交流の数をカウントする

交流の数








星を３つ選ぶ