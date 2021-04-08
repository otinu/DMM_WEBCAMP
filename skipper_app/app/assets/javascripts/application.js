// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery


//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

let title = "javascriptが使えました";
alert(title);

$(function () {
 $('.jquery').on('click', function() {
  $(this).css('color','red');
 });
});

$(document).ready(function () {
  $("#theTarget").skippr({
    transition : 'slide',          // スライドショーの変化 ("fade" or "slide")
    speed : 1000,                  // 変化に係る時間(ミリ秒)
    easing : 'easeOutQuart',       // easingの種類
    navType : 'block',             // ナビゲーションの形("block" or "bubble")
    childrenElementType : 'div',   // 子要素の種類('div' or 'img')
    arrows : true,                 // ナビゲーション矢印の表示(trueで表示)
    autoPlay : true,               // スライドショーの自動再生(falseで自動再生なし)
    autoPlayDuration : 3000,       // 自動再生時のスライド切替間隔(ミリ秒)
    keyboardOnAlways : true,       // キーボードの矢印キーによるスライド送りの設定(trueで有効)
    hidePrevious : false           // 一枚目のスライド表示時に戻る矢印を表示するかどうか(falseで非表示)
  });
});
