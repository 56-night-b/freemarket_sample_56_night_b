window.addEventListener("load", function() {
  // タブのDOM要素を取得し、変数で定義
  let tabs3 = $(".main__reviews_tabs--menu");
  // tabsを配列に変換する
  tabsAry3 = Array.prototype.slice.call(tabs3);

  // クラスの切り替えをtabSwitch関数で定義
  function tabSwitch3() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $(".active3")[0].classList.remove("active3");

    // クリックしたタブにactiveクラスを追加
    this.classList.add("active3");

    // コンテンツの全てのshowクラスのうち、最初の要素を削除
    $(".show3")[0].classList.remove("show3");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index3 = tabsAry3.indexOf(this);

    // クリックしたcoutentクラスにshowクラスを追加する
    $(".contents__mainlist")[index3].classList.add("show3");
  }

  // タブメニューの中でクリックイベントが発生した場所を探し、下で定義したtabSwitch関数を呼び出す
  tabsAry3.forEach(function(value) {
    value.addEventListener("click", tabSwitch3);
  });
});