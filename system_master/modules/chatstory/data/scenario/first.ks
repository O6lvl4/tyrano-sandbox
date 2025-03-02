;一番最初に呼び出されるファイル

[title name="ティラノストーリー"]

[stop_keyconfig]

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;各種設定
@hidemenubutton
[position layer="message0" left=20 top=900 width=820 height=300 page=fore visible=false ]
[position layer=message0 page=fore margint="95" marginl="50" marginr="70" marginb="60" ]


;プラグインの呼び出し
[plugin name="chat_story" ]

;チャットストーリー用の設定
@call storage="setstory.ks"

[ready_chat_edit]

;チャットストーリーに移動

[if exp="sf._is_edit_mode==false"]
@jump storage="scene1.ks"
[endif]

[s]


