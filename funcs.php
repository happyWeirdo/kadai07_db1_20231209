<?php
//共通に使う関数を記述
//XSS対応（ echoする場所で使用！それ以外はNG ）
function h($str)  {
    return htmlspecialchars($str, ENT_QUOTES);
  }

// PHPの閉じタグの後にもし空白やスペースを入れてしまった場合、プログラミング自体が動かなくなったりします。
// そうしたトラブルを避けるためにも、閉じタグは使わずにする
