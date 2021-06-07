GAS　Summarey


# 公式サイト
https://developers.google.com/apps-script

# 算術演算子

+   
-
/
*
%

++w
w++
--i
i--



# 複合代入演算子
=   x=3
+=  x+3
-=  x-3
*=  x*3
/=  x/3
%=  x/3


# 比較演算子
==
!=
<
<=
>
>=
=== データ型も含めて等しい
!==　データ型も含めて違う


# 論理演算

&&
||
!

!(1 === 1) false
!(1 === 2) true


#　if 

if (){}

if(){}else{}

if(){}else if{}else{}


# log

Logger.log();



# もっと使いやすく

github でソースコードを管理する
- githubの利用
     Google Apps Script Github アシスタント という Chrome Extension 
- ローカルでのコーティング
     node-google-apps-script という npm パッケージをローカル環境にグローバルインストールことで、ローカルで開発したものを GAS に push することができる
     

# Date
getFullYear()	「年」（４桁までの年）を返す
getMonth()	「月」（0-11）を返す
getDate()	「日」（0-31）を返す
getDay()	「曜日」（0-6）を返す
getHours()	「時」（0-23）を返す
getMinutes()	「分」（0-59）を返す
getSeconds()	「秒」（0-59）を返す
getMilliseconds()	「ミリ秒」（0-999）を返す
getTime()	1970年1月1日 00:00:00からの経過ミリ秒を返す
getTimezoneOffset()	現地の時刻と協定世界時刻（UTC）との差を返す
setFullYear(y)	「年」をy（４桁までの年）に設定する
setMonth(m)	「月」をｍ（0-11）に設定する
setDate(d)	「日」をｄ（0-31）に設定する
setHours(h)	「時」をｍ（0-23）に設定する
setMinutes(m)	「分」をｓ（0-59）に設定する
setSeconds(s)	「秒」をms（0-59）に設定する
setMilliseconds(ms)	「ミリ秒」ts（0-999）に設定する
setTime(ts)	1970年1月1日 00:00:00からの経過ミリ秒をtsに設定する
toString()	日時を文字列に変換する
toDateString()	日付部分を文字列に変換する
toTimeString()	時刻部分を文字列に変換する
toJSON()	日時をJSON文字列に変換する