;一番最初に呼び出されるファイル

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

;3D箱庭作成
[3d_init ]

[iscript]

sf._is_edit_mode = false;

if(parent.app){
    sf._is_edit_mode = true;
    parent.app.view.EditHako.finishEditReady();
}

//alert(sf._is_edit_mode);

[endscript]

[if exp="sf._is_edit_mode==false"]

;エディットモードじゃない
@jump storage="scene1.ks"

[endif]

[s]


