=begin
PAIZAタウンでは、公共交通の手段としてタクシーが発達しています。
様々な料金のタクシーがあるため、初乗りが安くても最終的な運賃が高いタクシーを拾ってしまうかもしれません。

タクシーの運賃は初乗り距離と初乗り運賃、加算距離、加算運賃で決まります。
タクシーの乗車距離が初乗り距離未満の場合は、初乗り運賃だけで移動することができます。
初乗り距離と同じ距離だけ乗車した段階で、運賃に加算運賃が追加され、
以後加算距離を移動する毎に加算運賃が追加されていきます。

あなたは今いる場所から X メートル離れた場所へ、 1 台のタクシーで移動しようとしています。
利用可能なタクシー N 台の料金のパラメータが与えられるので、
タクシーで X メートル移動した際の最安値と最高値を計算してください。

例えば、 入力例 1 の場合は以下のように 600円 が最安値となり、 800円 が最高値となります。
1 番目のタクシーは初乗り距離以上なので加算距離 1 つ分が追加され 600円 かかります。
2 番目のタクシーは初乗り距離までで到着するので、初乗り運賃のみで 800円 かかります。


N X
a_1 b_1 c_1 d_1
a_2 b_2 c_2 d_2
...
a_N b_N c_N d_N

・1 行目にタクシーの種類数 N、目的地までの距離 X がこの順に整数で半角スペース区切りで与えられます。
x = gets.chomp.split
x[0]
x[1]
・2 行目から続く N 行には i 番目 (1 ≦ i ≦ N) のタクシーの 初乗り距離 a_i、 初乗り運賃 b_i、 加算距離 c_i、 加算運賃 d_i が整数でこの順にスペース区切りで与えられます。
line = STDIN.readlines.map{|line| line.split(" ").map(&:to_i)}
p lines[0][0]
・入力は合計 N + 1 行であり、最終行の末尾に改行が1つ入ります。
初乗り距離 a_i、 初乗り運賃 b_i、 加算距離 c_i、 加算運賃 d_i 


タクシーで X メートル移動した際の最安値と最高値を計算してください。
code
    # 全部のタクシー会社での料金を算出し
    # 全部のタクシー会社の初乗り距離以内の場合
x[0].count{}
 # 料金計算



=end
line = gets.chomp.split
# puts x

x = STDIN.readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}

 # 料金計算
 first_input = true
 first_ride = line[1].to_i
 high_price = 0
 low_price = 0
 

 line[0].to_i.times{|i|
#   puts x[i][0] 
#   puts first_ride
if  x[i][0] > first_ride then
    ride_price = x[i][1]
else
    if ((first_ride-x[i][0])/x[i][2]) < 1 then
        ride_price = x[i][1] + x[i][3]
    else
        ride_price = x[i][1] + ((((first_ride-x[i][0])/x[i][2])+1)*x[i][3])
    end
end
    # 最初に一回入れる
if first_input then
    high_price = ride_price
    low_price  = ride_price
    first_input = false
end

if high_price < ride_price then
    high_price = ride_price
elsif low_price > ride_price then
    low_price = ride_price
end

}
ans=[]
ans << low_price
ans << high_price

print "#{low_price} #{high_price}"



