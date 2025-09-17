# re_util
Refate Utility

# tick control

```
execute if data storage re_util tickCTRL{2:true} run say "2tick毎に実行されるよ" 
```
対応tick  
2,10,20,100,200  

また、以下のように処理を分散させることができます。 
```
execute if data storage re_util tickCTRL{tick-1:true} run say "重い処理1" 
execute if data storage re_util tickCTRL{tick-2:true} run say "重い処理2" 
```
対応数字 : 0~9 

# int to bar

カスタムフォントを用いてHPバーなどを作る際に使用する。 
in.valueとin.maxにintを入れて実行すると0と1が100個並んだ配列がoutに返される。interpretをつけて出力し、-をネガティブスペースに設定することできれいなバーが作れる 

# click command

クリックした際にコマンドを実行するinteractionを召喚できます。 
inにheight,width,command_r,command_lを指定して、召喚したい場所で実行 

実行コマンド内で 
interactionは@s 
クリックしたプレイヤーは@a[tag=re_util_click_cmd_player] 
さらにinteraction[@s]には 
#re_util_ccmd_r 右クリックで実行した場合 
#re_util_ccmd_l　左クリックで実行した場合 
のタグが付きます 

# sin cos tan
三角関数のsin cos tanを取得する
inに入力outに出力

# sqrt
ルートを計算
inに入力outに出力