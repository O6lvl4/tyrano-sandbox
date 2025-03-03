function yukkuriSpeak(text, pitch, rate) {
    // 数値変換とデフォルト値設定
    var pitch_val = parseFloat(pitch);
    var rate_val  = parseFloat(rate);
    if(isNaN(pitch_val)) { pitch_val = 0.4; }
    if(isNaN(rate_val))  { rate_val  = 1.0; }
    // SpeechSynthesisの実行
    var msg = new SpeechSynthesisUtterance(text);
    msg.lang  = "ja-JP";
    msg.pitch = pitch_val;
    msg.rate  = rate_val;
    speechSynthesis.speak(msg);
  }

  function debugAlert(tex) {
    alert(text);
  }