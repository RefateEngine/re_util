# re_util
Refate Utility

#tick control

execute if data storage re_util tickCTRL{2:true} run say "2tick毎に実行されるよ"
対応tick
2,10,20,100,200

また、以下のように処理を分散させることができます。
execute if data storage re_util tickCTRL{tick-1:true} run say "重い処理1"
execute if data storage re_util tickCTRL{tick-2:true} run say "重い処理2"
対応数字
0~9