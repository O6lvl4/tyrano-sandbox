[loadjs storage="globalFunction.js"]
;====================================================
; マクロ定義
;====================================================

;--------------------------------
; ゆっくりボイス用マクロ
;--------------------------------
[macro name="yukkuri_speak" param="msg,pitch,rate"]
  [iscript]
    var txt = mp.msg;
    var pitch_val = parseFloat(mp.pitch);
    var rate_val = parseFloat(mp.rate);
    yukkuriSpeak(txt, pitch_val, rate_val);
    this.kag.ftag.nextOrder();
  [endscript]
[endmacro]

;--------------------------------
; 霊夢用マクロ（音声→待機→セリフ表示）
;--------------------------------
[macro name="reimu" param="text,pitch,rate"]

; 3) 霊夢のセリフ表示
[font size="46" color="red" edge="white" shadow="#444" bold="true"]
[emb exp="mp.text"]
[resetfont][p]

[endmacro]

;--------------------------------
; 魔理沙用マクロ（音声→待機→セリフ表示）
;--------------------------------
[macro name="marisa" param="text,pitch,rate"]

[font size="46" color="yellow" edge="black" shadow="#222" bold="true"]
[emb exp="mp.text"]
[resetfont][p]

[endmacro]


;====================================================
; ここから本編シナリオ
;====================================================

*start

; BGM再生
@playbgm time="3000" storage="bgm-first.mp3" loop="true" volume="30"

[cm]
[clearfix]
[start_keyconfig]

[bg storage="room.jpg" time="100"]
; @showmenubutton

[position layer="message0" left="160" top="500" width="1000" height="200" page="fore" visible="true"]
[position layer="message0" page="fore" margint="40" marginl="50" marginr="70" marginb="60"]
@layopt layer="message0" visible="true"

[chara_new name="reimu"  storage="https://dummyimage.com/300x400/000/fff.png&text=Reimu"  jname="霊夢"]
[chara_new name="marisa" storage="https://dummyimage.com/300x400/333/fff.png&text=Marisa" jname="魔理沙"]

[chara_show name="reimu"  left="0"   time="500"]
[chara_show name="marisa" left="900" time="500"]

;――――――――――――――――――――――――――――――――
; オープニング
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="どうもみなさん、ゆっくり霊夢だよ。" pitch="0.4" rate="1.0"]
[reimu text="どうもみなさん、ゆっくり霊夢だよ。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="今日も元気にやっていくわよおおおおお。" pitch="0.4" rate="1.0"]
[reimu text="今日も元気にやっていくわよ～。" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 霊夢のセリフ
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="さて、今回は〇〇ゲームの実況をしていきます。" pitch="0.4" rate="1.0"]
[reimu text="さて、今回は〇〇ゲームの実況をしていきます。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="視聴者のみんな、ゆっくり楽しんでいってね。" pitch="0.4" rate="1.0"]
[reimu text="視聴者のみんな、ゆっくり楽しんでいってね。" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 魔理沙のセリフ
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="どうも、ゆっくり魔理沙だぜ。" pitch="0.6" rate="1.0"]
[marisa text="どうも、ゆっくり魔理沙だぜ。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="今回のゲームはしょけんプレイだから、どうなることやら…。" pitch="0.8" rate="1.0"]
[marisa text="今回のゲームは初見プレイだから、どうなることやら…" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 霊夢の続き
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="ま、なんとかなるでしょう。" pitch="0.4" rate="1.0"]
[reimu text="ま、なんとかなるでしょう。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="それじゃスタートしてみましょ！" pitch="0.4" rate="1.0"]
[reimu text="それじゃスタートしてみましょ！" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 場面転換
;――――――――――――――――――――――――――――――――
[bg storage="rouka.jpg" time="3000" method="crossfade"]

;――――――――――――――――――――――――――――――――
; 霊夢（廊下シーン）
;――――――――――――――――――――――――――――――――
@stopbgm time="2000"
[yukkuri_speak msg="んー、この廊下、ちょっと不気味ね。" pitch="0.4" rate="1.0"]
[reimu text="んー、この廊下、ちょっと不気味ね。" pitch="0.4" rate="1.0"]
@playbgm storage="bgm-middle.wav" loop="true" volume="30"

[yukkuri_speak msg="ホラー要素とかありそうでドキドキしちゃうわ。" pitch="0.4" rate="1.0"]
[reimu text="ホラー要素とかありそうでドキドキしちゃうわ。" pitch="0.4" rate="1.0"]

[bg storage="room.jpg" time="1000" method="slide"]

;――――――――――――――――――――――――――――――――
; 魔理沙（教室シーン）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="おいおい、もう教室に戻ってきたのかよ。" pitch="0.4" rate="1.0"]
[marisa text="おいおい、もう教室に戻ってきたのかよ。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="ちゃんと探索しなくていいのか？" pitch="0.4" rate="1.0"]
[marisa text="ちゃんと探索しなくていいのか？" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 霊夢（続き）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="大丈夫よ、まだまだ先は長いし。" pitch="0.4" rate="1.0"]
[reimu text="大丈夫よ、まだまだ先は長いし。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="ここからが本番ってところね。" pitch="0.4" rate="1.0"]
[reimu text="ここからが本番ってところね。" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 霊夢（攻略ポイント）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="じゃあ攻略ポイントをざっとおさらい。" pitch="0.4" rate="1.0"]
[reimu text="じゃあ攻略ポイントをざっとおさらい。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="いち、 〇〇を集める" pitch="0.4" rate="1.0"]
[reimu text="① 〇〇を集める" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="に、 隠し通路をチェック" pitch="0.4" rate="1.0"]
[reimu text="② 隠し通路をチェック" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="さん、 ボス戦はアイテム温存" pitch="0.4" rate="1.0"]
[reimu text="③ ボス戦はアイテム温存" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="…こんな感じで行くわよ！" pitch="0.4" rate="1.0"]
[reimu text="…こんな感じで行くわよ！" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 魔理沙（続き）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="了解だぜ。" pitch="0.4" rate="1.0"]
[marisa text="了解だぜ。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="よーし、気合入れていくか！" pitch="0.4" rate="1.0"]
[marisa text="よーし、気合入れていくか！" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 霊夢（シーン転換後）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="怪しげなスイッチ発見…押しちゃおっか。" pitch="0.4" rate="1.0"]
[reimu text="怪しげなスイッチ発見…押しちゃおっか。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="ガチャン…何も起きない？" pitch="0.4" rate="1.0"]
[reimu text="ガチャン…何も起きない？" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 魔理沙（続き）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="やれやれ、拍子抜けだな。" pitch="0.4" rate="1.0"]
[marisa text="やれやれ、拍子抜けだな。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="まぁ、先に進むとするか。" pitch="0.4" rate="1.0"]
[marisa text="まぁ、先に進むとするか。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="ここがボス部屋か…" pitch="0.4" rate="1.0"]
[marisa text="ここがボス部屋か…" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="そろそろアツくなってきたな。" pitch="0.4" rate="1.0"]
[marisa text="そろそろアツくなってきたな。" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; BGM変更シーン
;――――――――――――――――――――――――――――――――
@stopbgm time="2000"
@playbgm storage="bgm-finish.mp3" loop="true" volume="30"

;――――――――――――――――――――――――――――――――
; 霊夢（最終シーン）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="このBGM…いかにも最終決戦って感じね！" pitch="0.4" rate="1.0"]
[reimu text="このBGM…いかにも最終決戦って感じね！" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="負けないわよ、魔理沙！" pitch="0.4" rate="1.0"]
[reimu text="負けないわよ、魔理沙！" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 魔理沙（最終シーン）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="おう、私が派手に勝ってみせるぜ！" pitch="0.4" rate="1.0"]
[marisa text="おう、私が派手に勝ってみせるぜ！" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 霊夢（エンディング）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="やった！ なんとか勝てたわね。" pitch="0.4" rate="1.0"]
[reimu text="やった！ なんとか勝てたわね。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="正直ギリギリだったけど…" pitch="0.4" rate="1.0"]
[reimu text="正直ギリギリだったけど…" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 魔理沙（エンディング）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="ああ、かなり苦戦したけど、目標達成ってことでOKだろ！" pitch="0.4" rate="1.0"]
[marisa text="ああ、かなり苦戦したけど、目標達成ってことでOKだろ！" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="さて、次回はどうする？ また別の攻略でもいいぜ。" pitch="0.4" rate="1.0"]
[marisa text="さて、次回はどうする？ また別の攻略でもいいぜ。" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 霊夢（エンディング続き）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="というわけで、今回の実況はここまで。" pitch="0.4" rate="1.0"]
[reimu text="というわけで、今回の実況はここまで。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="最後まで見てくれてありがとう！" pitch="0.4" rate="1.0"]
[reimu text="最後まで見てくれてありがとう！" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="また次回、ゆっくりしていってね～。" pitch="0.4" rate="1.0"]
[reimu text="また次回、ゆっくりしていってね～。" pitch="0.4" rate="1.0"]

;――――――――――――――――――――――――――――――――
; 魔理沙（エンディング続き）
;――――――――――――――――――――――――――――――――
[yukkuri_speak msg="チャンネル登録やコメントも頼むぜ。" pitch="0.4" rate="1.0"]
[marisa text="チャンネル登録やコメントも頼むぜ。" pitch="0.4" rate="1.0"]

[yukkuri_speak msg="じゃあ、またな！" pitch="0.4" rate="1.0"]
[marisa text="じゃあ、またな！" pitch="0.4" rate="1.0"]

@s
@stopbgm time="2000"
[cm]
[end]
