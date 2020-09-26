 

 # unzipで日本語が文字化け
 解凍する際の 文字コードが違う場合

 CP932(Shift_JIS)なのでどちらでも可
 
 ```
  #zipファイルの文字コード確認
  
　zipinfo hoge.zip

  unzip -Ocp932 hoge.zip

  unzip -O sjis hoge.zip
 ```


