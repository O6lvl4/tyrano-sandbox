;チャットストーリー用の設定を記述する

;背景を設定する所
[bg storage="bgchat.png" time="100"]

[font size=26 ]
[chat_config face_width=100 under_height=700 ]

[macro name="ready_chat_edit"]

[iscript]

//スタジオじゃない場合は、
console.log(parent)

sf._is_edit_mode = false;

if(parent.app){
    sf._is_edit_mode = true;
    console.log(parent.app.view.EditChat);
    parent.app.view.EditChat.finishEditReady();
}

[endscript]

[endmacro]


[return]
